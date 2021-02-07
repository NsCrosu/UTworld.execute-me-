if fps == room_speed && !timeline_running && !stop{
	global.bgm = audio_play_sound(sndBGM, 0, false);
	timeline_index = tl1;
	timeline_speed = (bpm*beat)/3000;
	timeline_position = start_pos;
	timeline_running = true;
	game_time = -1;
}

if instance_exists(objPlayer){
	if objPlayer.nowState == state.die{
		if !stop{
			stop = true;
			timeline_running = false;
			audio_sound_gain(global.bgm, 0, 500);
		}
		if keyboard_check_pressed(vk_enter){
			with(sysWorld){event_perform(ev_keypress, vk_f5);}
		}
	}
}
