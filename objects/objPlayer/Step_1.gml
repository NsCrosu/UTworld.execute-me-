modes[mode.red] = function(){
	image_blend = $241CEE;
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
modes[mode.blue] = function(){
	image_blend = $EE1C24;
							var left = keyboard_check(vk_left);
							var up = keyboard_check(vk_up);                //  嗯
							var right = keyboard_check(vk_right);    //               这里要换成蓝心的参数
							var down = keyboard_check(vk_down);          //  但是我懒得做了, 所以暂时用红心的
							if moveable{                       //                                    顶替一下
								repeat(spd*10){
									if left{if(!position_meeting(x-sprite_width/2, y, objBlock)){x-=0.1;}}
									if up{if(!position_meeting(x, y-sprite_height/2, objBlock)){y-=0.1;}}
									if right{if(!position_meeting(x+sprite_width/2, y, objBlock)){x+=0.1;}}
									if down{if(!position_meeting(x, y+sprite_height/2, objBlock)){y+=0.1;}}
								}
							}                                                    //       以后肯定改
}

states[state.normal] = function(){
	if keyboard_check(vk_shift){
		nowState = state.slow;
	}
	if nowHP <= 0{
		nowState = state.die;
		alarm[0] = 0;
	}
}
states[state.slow] = function(){
	static slowSpd = spd/2;
	spd = slowSpd;
	if !keyboard_check(vk_shift){
		spd = slowSpd*2;
		nowState = state.normal;
	}
	if nowHP <= 0{
		nowState = state.die;
		alarm[0] = 0;
	}
}
states[state.hurt] = function(){
	if alarm[0] < 0{alarm[0] = invTime;}
	if alarm[0] == invTime-1{
		audio_play_sound(sndHurt, 10, false);
		nowHP-=dmgHP;
	}
	if nowHP <= 0{
		nowState = state.die;
		alarm[0] = 0;
	}
	switch(nowMode){
		case mode.red:
			image_blend = $000080;
			break;
		case mode.blue:
			image_blend = $7F1D00;
			break;
		default: break;
	}
}
states[state.die] = function(){
	sprite_index = sprPlayerDie;
	moveable = false;
	nowMode = mode.red;
}
