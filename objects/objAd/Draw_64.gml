if stop{
	draw_set_alpha(1-audio_sound_get_gain(global.bgm));
	draw_rectangle_color(-640, -480, 640*2, 480*2, c_black, c_black, c_black, c_black, false);
	draw_sprite_ext(objPlayer.sprite_index, objPlayer.image_index, objPlayer.x, objPlayer.y, objPlayer.image_xscale, objPlayer.image_yscale, objPlayer.image_angle, objPlayer.image_blend, objPlayer.image_alpha);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(320, 240, "Press \"Z\" or enter\nto restart the game");
}
