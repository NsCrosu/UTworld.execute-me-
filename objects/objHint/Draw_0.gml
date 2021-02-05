draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntDetermine);
draw_text_transformed_color(room_width/2, room_height/2+48, "Press \"Z\" or Enter\nto start the game", 2, 2, dsin(current_time/room_speed*5)*35, c_black, c_black, c_black, c_black, dsin(current_time/room_speed*8)+1.25);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
