if stop{
	draw_set_alpha(1-audio_sound_get_gain(global.bgm));
	draw_rectangle_color(-640, -480, 640*2, 480*2, c_black, c_black, c_black, c_black, false);
	draw_sprite_ext(objPlayer.sprite_index, objPlayer.image_index, objPlayer.x, objPlayer.y, objPlayer.image_xscale, objPlayer.image_yscale, objPlayer.image_angle, objPlayer.image_blend, objPlayer.image_alpha);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(320, 240, "Press \"Z\" or enter\nto restart the game");
}

var _curStep = " curStep: " + string(round(timeline_position));
var _instNum = " Nums: " + string(instance_number(all));
var _playerX = " X: ";
var _playerY = " Y: ";
if instance_exists(objPlayer){
	_playerX += string(objPlayer.x);
	_playerY += string(objPlayer.y);
}else{
	_playerX += string(NaN);
	_playerY += string(NaN);
}
var _curFps = " FPS: " + string(fps) + "/" + string(room_speed);

draw_set_font(fntDebug);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(30, 82, _curStep + _instNum + _playerX + _playerY + _curFps, c_red, c_red, c_red, c_red, 1);
