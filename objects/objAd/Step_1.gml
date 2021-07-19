if fps == room_speed && !timeline_running{
	global.bgm = audio_play_sound(sndBGM, 0, false);
	timeline_index = tl1;
	timeline_speed = (bpm*beat)/3000;
	timeline_position = start_pos;
	timeline_running = true;
	gametime = -1;
}
