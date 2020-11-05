function Walking(argument0, argument1) {
	left_step = keyboard_check(vk_left);
	right_step = keyboard_check(vk_right);
	jump_step = keyboard_check_pressed(vk_space);

	var move_=right_step-left_step;

	hspeed_ = lerp(hspeed_,acceleration*move_,argument0);
	vspeed_ = vspeed_+argument1;





}
