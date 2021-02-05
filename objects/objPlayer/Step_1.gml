modes[mode.red] = function(){
	image_blend = $241CEE;
	var spd = 3;
	var spd = keyboard_check(vk_shift) ? spd/2 : spd;
	var left = keyboard_check(vk_left);
	var up = keyboard_check(vk_up);
	var right = keyboard_check(vk_right);
	var down = keyboard_check(vk_down);
	if moveable{
		repeat(spd*10){
			if left{if(!position_meeting(x-sprite_width/2, y, objBlock)){x-=0.1;}}
			if up{if(!position_meeting(x, y-sprite_height/2, objBlock)){y-=0.1;}}
			if right{if(!position_meeting(x+sprite_width/2, y, objBlock)){x+=0.1;}}
			if down{if(!position_meeting(x, y+sprite_height/2, objBlock)){y+=0.1;}}
		}
	}
}
