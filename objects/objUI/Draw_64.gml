<<<<<<< HEAD:objects/objUI/Draw_64.gml
if surface_exists(global.sf[UI]){
	surface_set_target(global.sf[UI]);
}else{
	global.sf[UI] = surface_create(640, 480);
}
=======
surface_set_target(global.sf[0]);
>>>>>>> parent of 2dbb689 (sbsurface):objects/objUI/Draw_0.gml
draw_clear_alpha(c_black, 0);

draw_sprite_ext(sprFight, 0, 32, 432, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprAct, 0, 185, 432, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprItem, 0, 345, 432, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprMercy, 0, 500, 432, 1, 1, 0, c_white, 1);

draw_set_font(fntMNC);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
draw_text_transformed(30, 401, "FRISK" + "   LV 1 ", 1.5, 1.5, 0);
draw_sprite_ext(sprHP, 0, 244, 405, 1, 1, 0, c_white, 1);
draw_text_transformed(275 + objPlayer.maxHP*1.2*1.2 + 14, 401, string(objPlayer.nowHP) + " / " + string(objPlayer.maxHP), 1.5, 1.5, 0);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprPixel, 0, 275, 400, objPlayer.maxHP*1.2, 21, 0, make_color_rgb(192, 0, 0), 1);
draw_sprite_ext(sprPixel, 0, 275, 400, objPlayer.nowHP*1.2, 21, 0, make_color_rgb(255, 255, 0), 1);

<<<<<<< HEAD:objects/objUI/Draw_64.gml
if surface_exists(global.sf[UI]){
	surface_reset_target();
}else{
	global.sf[UI] = surface_create(640, 480);
}

if activate{
	len[0]+=(1-len[0])/20;
	if len[0]<0.75{
		var_time_var+=0.04;
		var_wave_distortion = 60+len[0]*500;
		shader_set(shdRipple);
		shader_set_uniform_f(uni_time, var_time_var);
		shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
		shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
		shader_set_uniform_f(uni_wave_amount, var_wave_amount);
		shader_set_uniform_f(uni_wave_distortion, var_wave_distortion);
		shader_set_uniform_f(uni_wave_speed, var_wave_speed);
		repeat(2){
			draw_surface_part_ext(global.sf[UI], 320-len[0]*320, 0, len[0]*320, 480, 320-len[0]*320, sfy, 1, 1, c_white, 1);
			draw_surface_part_ext(global.sf[UI], 320, 0, len[0]*320, 480, 320, sfy, 1, 1, c_white, 1);
		}
		shader_reset();
	}else{
		repeat(2){
			draw_surface_part_ext(global.sf[UI], 320-len[0]*320, 0, len[0]*320, 480, 320-len[0]*320, sfy, 1, 1, c_white, 1);
			draw_surface_part_ext(global.sf[UI], 320, 0, len[0]*320, 480, 320, sfy, 1, 1, c_white, 1);
		}
	}
	if mv{
		len[1]+=(1-len[1])/10;
		sfy=len[1]*52;
	}
}else{
	draw_surface_ext(global.sf[UI], 0, sfy, 1, 1, 0, c_white, 1);
=======
surface_reset_target();

len[0]+=(1-len[0])/10;
repeat(2){
	draw_surface_part_ext(global.sf[0], 320-len[0]*320, 0, len[0]*320, 480, 0, sfy, 1, 1, c_white, 1);
	draw_surface_part_ext(global.sf[0], 320+len[0]*320, 0, -len[0]*320, 480, 640, sfy, 1, 1, c_white, 1);
}
if mv{
	len[1]+=(1-len[1])/10;
	sfy=len[1]*52;
>>>>>>> parent of 2dbb689 (sbsurface):objects/objUI/Draw_0.gml
}
