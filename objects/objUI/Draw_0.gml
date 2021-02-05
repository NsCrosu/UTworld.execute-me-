surface_set_target(global.sf[0]);
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

surface_reset_target();

len[0]+=(1-len[0])/10;
repeat(2){
	draw_surface_part_ext(global.sf[0], 320-len[0]*320, 0, len[0]*320, 480, 0, sfy, 1, 1, c_white, 1);
	draw_surface_part_ext(global.sf[0], 320+len[0]*320, 0, -len[0]*320, 480, 640, sfy, 1, 1, c_white, 1);
}
if mv{
	len[1]+=(1-len[1])/10;
	sfy=len[1]*52;
}
