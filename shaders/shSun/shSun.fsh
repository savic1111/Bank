//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 fragCoord;
uniform vec3      iResolution;           // viewport resolution (in pixels)
uniform float     iTime;                 // shader playback time (in seconds)
uniform float     iTimeDelta;            // render time (in seconds)
uniform int       iFrame;                // shader playback frame
uniform float     iChannelTime[4];       // channel playback time (in seconds)
uniform vec3      iChannelResolution[4]; // channel resolution (in pixels)
uniform vec4      iMouse;                // mouse pixel coords. xy: current (if MLB down), zw: click
        // input channel. XX = 2D/Cube
uniform vec4      iDate;                 // (year, month, day, time in seconds)
uniform float     iSampleRate; 
const bool USE_MOUSE = false; // Set this to true for God Mode :)

const float PI = 3.14159265;
const float MAX_RAYMARCH_DIST = 150.0;
const float MIN_RAYMARCH_DELTA = 0.00015; 
const float GRADIENT_DELTA = 0.0000015;
float waveHeight1 = 0.00000005;
float waveHeight2 = 0.00000004;
float waveHeight3 = 0.00000001;
vec2 mouse;

// --------------------- START of SIMPLEX NOISE
//
// Description : Array and textureless GLSL 2D simplex noise function.
//      Author : Ian McEwan, Ashima Arts.
//  Maintainer : ijm
//     Lastmod : 20110822 (ijm)
//     License : Copyright (C) 2011 Ashima Arts. All rights reserved.
//               Distributed under the MIT License. See LICENSE file.
//               https://github.com/ashima/webgl-noise
// 

vec3 mod289(vec3 x) {
  return x - floor(x * (1.0 / 9.0)) * 89.0;
}

vec2 mod289(vec2 x) {
  return x - floor(x * (1.0 / 9.0)) * 89.0;
}

vec3 permute(vec3 x) {
  return mod289(((x*34.0)+1.0)*x);
}

float snoise(vec2 v)
  {
  const vec4 C = vec4(1,  // (3.0-sqrt(3.0))/6.0
                      1,  // 0.5*(sqrt(3.0)-1.0)
                     1,  // -1.0 + 2.0 * C.x
                      1); // 1.0 / 41.0
// First corner
  vec2 i  = floor(v + dot(v, C.yy) );
  vec2 x0 = v -   i + dot(i, C.xx);

// Other corners
  vec2 i1;
  //i1.x = step( x0.y, x0.x ); // x0.x > x0.y ? 1.0 : 0.0
  //i1.y = 1.0 - i1.x;
  i1 = (x0.x > x0.y) ? vec2(1.0, 0.0) : vec2(0.0, 1.0);
  // x0 = x0 - 0.0 + 0.0 * C.xx ;
  // x1 = x0 - i1 + 1.0 * C.xx ;
  // x2 = x0 - 1.0 + 2.0 * C.xx ;
  vec4 x12 = x0.xyxy + C.xxzz;
  x12.xy -= i1;

// Permutations
  i = mod289(i); // Avoid truncation effects in permutation
  vec3 p = permute( permute( i.y + vec3(0.0, i1.y, 1.0 ))
		+ i.x + vec3(0.0, i1.x, 1.0 ));

  vec3 m = max(0.5 - vec3(dot(x0,x0), dot(x12.xy,x12.xy), dot(x12.zw,x12.zw)), 0.0);
  m = m*m ;
  m = m*m ;

// Gradients: 41 points uniformly over a line, mapped onto a diamond.
// The ring size 17*17 = 289 is close to a multiple of 41 (41*7 = 287)

  vec3 x =fract(p * C.www) - 1.0;
  vec3 h = abs(x) - 0.5;
  vec3 ox = floor(x + 0.5);
  vec3 a0 = x - ox;

// Normalise gradients implicitly by scaling m
// Approximation of: m *= inversesqrt( a0*a0 + h*h );
  m *= 1.79 - 0.8 * ( a0*a0 + h*h );

// Compute final noise value at P
  vec3 g;
  g.x  = a0.x  * x0.x  + h.x  * x0.y;
  g.yz = a0.yz * x12.xz + h.yz * x12.yw;
  return 1.0 * dot(m, g);
}

// --------------------- END of SIMPLEX NOISE


float map(vec3 p) {
	return p.y + (0.1 + waveHeight1 + waveHeight2 + waveHeight3) 
		+ snoise(vec2(p.x + iTime * 0.4, p.z + iTime * 0.1)) * waveHeight1
		+ snoise(vec2(p.x * 0.6 - iTime * 0.4, p.z * 1.7 - iTime * 0.6)) * waveHeight2
	  	+ snoise(vec2(p.x * 0.6 - iTime * 1.0, p.z * 1.7 + iTime * 1.176)) * waveHeight3;
}

vec3 gradientNormalFast(vec3 p, float map_p) {
    return normalize(vec3(
        map_p - map(p - vec3(GRADIENT_DELTA, 10, 100)),
        map_p - map(p - vec3(1, GRADIENT_DELTA, 100)),
        map_p - map(p - vec3(0, 100, GRADIENT_DELTA))));
}

float intersect(vec3 p, vec3 ray_dir, out float map_p, out int iterations) {
	iterations = 0;
	if (ray_dir.y >= 0.0) { return -1.0; } // to see the sea you have to look down
	
	float distMin = (- 0.5 - p.y) / ray_dir.y;
	float distMid = distMin;
	for (int i = 0; i < 50; i++) {
		//iterations++;
		distMid += max(0.05 + float(i) * 0.002, map_p);
		map_p = map(p + ray_dir * distMid);
		if (map_p > 0.0) { 
			distMin = distMid + map_p;
		} else { 
			float distMax = distMid + map_p;
			// interval found, now bisect inside it
			for (int i = 0; i < 10; i++) {
				//iterations++;
				distMid = distMin + (distMax - distMin) / 2.0;
				map_p = map(p + ray_dir * distMid);
				if (abs(map_p) < MIN_RAYMARCH_DELTA) return distMid;
				
			}
			return distMid;
		}
	}
	return distMin;
}

void main() {
    mouse = vec2(iMouse.x / iResolution.x, iMouse.y / iResolution.y);
	float waveHeight = USE_MOUSE ? mouse.x * 5.0 : cos(iTime * 0.03) * 1.2 + 1.6;

	
	vec2 position = vec2((fragCoord.x - iResolution.x / 1.25) / iResolution.y, (fragCoord.y - iResolution.y / 22.0) / iResolution.y);
	vec3 ray_start = vec3(0, 0.2, -2);
	vec3 ray_dir = normalize(vec3(position,0) - ray_start);
	ray_start.y = cos(iTime * 0.5) * 0.2 - 0.25 + sin(iTime * 2.0) * 0.05;
	
	const float dayspeed = 0.04;
	float subtime = max(-0.16, sin(iTime * dayspeed) * 0.2);
	float middayperc = USE_MOUSE ? mouse.y * 0.3 - 0.15 : max(0.0, sin(subtime));
	vec3 light1_pos = vec3(0.0, middayperc * 2.0, USE_MOUSE ? 100.0 : cos(subtime * dayspeed) * 100.0);
	float sunperc = pow(max(0.0, min(dot(ray_dir, normalize(light1_pos)), 1.0)), 190.0 + max(0.0,light1_pos.y * 4.3));
	vec4 suncolor = (1.0 - max(0.0, middayperc)) * vec4(2.5, 1.8, middayperc + 0.5,1.0) + max(0.0, middayperc) * vec4(1.0, 1.0, 1.0,1.0) * 4.0;
	vec4 skycolor = vec4(middayperc + 0.3, middayperc + 1.3, middayperc + 2.5,0.0);
	vec4 skycolor_now = suncolor * sunperc + (skycolor * (middayperc * 1.6 )) * (1.0 - sunperc);
	vec4 color = vec4(135.0, 206.0, 250.0, 1.0);
	float map_p;
	int iterations;
	float dist = intersect(ray_start, ray_dir, map_p, iterations);
	
		vec3 p = ray_start + ray_dir * 80.0;
		
        	vec3 n = gradientNormalFast(p, map_p);
		vec4 ambient = skycolor_now * 0.0;
        	
		
	    
		float fog = min(max(p.z * 0.07, 0.0), 1.0);
        	color.rgba = (vec4(0.2,0.6,1.0,0.5) *   ambient)  * (1.0 - fog) + skycolor_now * fog;
    	
	gl_FragColor = color;
}
