if !keyboard_check(vk_control) && !keyboard_check(vk_alt) && !keyboard_check(vk_shift){
	if keyboard_check_pressed(vk_f4){
		window_set_fullscreen(!window_get_fullscreen());
	}
}
if room == r0{
	if keyboard_check_pressed(vk_enter){
		room_goto(r1);
	}
}
