//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 fragCoord;

uniform vec3      iResolution;           // viewport resolution (in pixels)
uniform float     iGlobalTime;         

uniform sampler2D tex_water;
// shader playback time (in seconds)
       // sound sample rate (i.e., 44100)

#define speed 3.0

// the amount of shearing (shifting of a single column or row)
// 1.0 = entire screen height offset (to both sides, meaning it's 2.0 in total)
#define xDistMag 0.00055
#define yDistMag 0.00055

// cycle multiplier for a given screen height
// 2*PI = you see a complete sine wave from top..bottom
#define xSineCycles 6.126
#define ySineCycles 6.126




void main()
{
	
	vec2 uv = vec2(fragCoord.x,fragCoord.y);
    // isotropic scaling, ensuring entire texture fits into the view.
    float minRes = min (iResolution.x, iResolution.y);

   
    
    // do the scaling.
    // After this, you should consider fragCoord = 0..1, usually,
    // aside from overflow for wide-screen.
    uv=fragCoord.xy/iResolution.xy;

    
    // the value for the sine has 2 inputs:
    // 1. the time, so that it animates.
    // 2. the y-row, so that ALL scanlines do not distort equally.
    float time = iGlobalTime*speed;
    float xAngle = time + fragCoord.y * ySineCycles;
    float yAngle = time + fragCoord.x * xSineCycles;
    
  
    vec2 distortOffset = 
        vec2(sin(xAngle), sin(yAngle)) * // amount of shearing
        vec2(xDistMag,yDistMag); // magnitude adjustment
    
    // shear the coordinates
    uv += distortOffset;    
    
    // grab the color
    // variable texture for demonstration purposes.    
   
        gl_FragColor = texture2D(tex_water, uv);
}