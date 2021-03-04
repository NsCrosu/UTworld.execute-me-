draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntDetermine);
draw_text_transformed_color(room_width/2, room_height/2+168, "Press \"Z\" or Enter\nto start the game", 1.25, 1.25, dsin(current_time/room_speed*5)*25, c_gray, c_gray, c_gray, c_gray, dsin(current_time/room_speed*6)+1.25);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
