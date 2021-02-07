if string_length(str) > 0{
	if string_char_at(str, 1) == "/"{
		i = 0;
		repeat(29){
			i++;
			strdraw[30-i] = strdraw[29-i];
			len[30-i] = len[29-i];
		}
		strdraw[1] = ">";
		len[1] = 0;
		str = string_copy(str, 2, string_length(str)-1);
	}else if string_char_at(str, 1) == "&" && wait == 0{
		time+=10;
		wait = 1;
		str = string_copy(str, 2, string_length(str)-1);
	}else{
		time-=time>0;
		if !time{
			strdraw[1]+=string_char_at(str, 1);
			str = string_copy(str, 2, string_length(str)-1);
			wait = !wait;
		}
	}
}
i = 0;
draw_set_color(make_color_rgb(64, 64, 64));
draw_set_font(fntDetermine);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
repeat(29){
	i++;
	if len[i] < string_length(strdraw[i]){len[i]++;}
	draw_text(5, i*20-10, string_copy(strdraw[i], 1, len[i]));
}
gpu_set_blendmode(bm_normal);
