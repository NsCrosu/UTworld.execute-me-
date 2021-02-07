game_time++;
if audio_is_playing(global.bgm){
	var _audio = audio_sound_get_track_position(global.bgm);
	var _cur = game_time/room_speed;
	if abs(_audio - _cur) >= 0.01{
		audio_sound_set_track_position(global.bgm, _cur);
	}
}
