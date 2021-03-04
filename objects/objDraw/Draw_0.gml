if activate{
	if sk{
		draw_set_alpha(len[18]-len[19]);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_color(c_gray);
		draw_set_font(fntDetermine);
		draw_text(630, 470, "Press [S] to skip");
		draw_set_alpha(1);
	}
	if sk == 1{
		if keyboard_check_pressed(ord("S")){
			objAd.timeline_position=111.1152133;
			objAd.game_time=640;
			objLog.str="";
			i=0;repeat(30){objLog.strdraw[i]="";i++;}
			plx=320;ply=240;on=1;re=0;pe=0;
			co=0;fd=0;oc=0;dt=0;st=1;sk=2;
		}
		len[18]+=(1-len[18])/50;
	}else if sk == 2{len[19]+=(1-len[19])/50;}
	if !on{
		len[0]+=(850-len[0])/10;
		draw_set_color(c_white);
		draw_rectangle(640-len[0], 230, 640, 240, 0);
		draw_rectangle(0, 250, len[0], 240, 0);
		draw_sprite_part_ext(sprLight, 0, 10, 0, 10, 10, 640-len[0], 220, len[0]/10, 1, c_white, 1);
		draw_sprite_part_ext(sprLight, 0, 10, 20, 10, 10, 0, 250, len[0]/10, 1, c_white, 1);
	}else{
		len[1]+=(118-len[1])/10;
		if go{len[2]+=(1-len[2])/10;}
		draw_set_color(c_white);
		draw_rectangle(0, 230-len[1]-len[2]*80, 640, 250+len[1]+len[2]*80, 0);
		draw_sprite_part_ext(sprLight, 0, 10, 0, 10, 10, 0, 220-len[1]-len[2]*80, 90, 1, c_white, 1);
		draw_sprite_part_ext(sprLight, 0, 10, 20, 10, 10, 0, 250+len[1]+len[2]*80, 90, 1, c_white, 1);
	}
	if re == 1{
		time[0]++;
		i=0;
		repeat(12){
			i++;
			if time[0]>i{len[3][i]+=(1-len[3][i])/10;}
			draw_set_alpha(len[3][i]);
			draw_set_color(c_black);
			draw_circle(320+lengthdir_x(75-len[3][i]*30, -(120-i*30)), 240+lengthdir_y(75-len[3][i]*30, -(120-i*30)), 5, 0);
			draw_set_alpha(1);
		}
	}else if re == 2{
		len[4]+=(1-len[4])/10;
		i=0;
		repeat(12){
			i++;
			if time[0]>i{len[3][i]+=(1-len[3][i])/10;}
			draw_set_alpha(len[3][i]);
			draw_set_color(c_black);
			draw_circle(320+lengthdir_x(75-len[3][i]*30+len[4]*75, 120-i*30), 240+lengthdir_y(75-len[3][i]*30+len[4]*75, 120-i*30), 5-len[4]*5, 0);
			draw_set_alpha(1);
		}
		draw_primitive_begin(pr_trianglestrip);
		draw_set_color(c_black);
		i=0;
		repeat(61){
			i++;
			draw_vertex(320+lengthdir_x(45+len[4]*70, i*6), 240+lengthdir_y(45+len[4]*70, i*6));
			draw_vertex(320+lengthdir_x(45+len[4]*80, i*6), 240+lengthdir_y(45+len[4]*80, i*6));
		}
		draw_primitive_end();
		time[1]+=time[1]<24;
		if (time[1] div 8)mod 2 == 1{draw_sprite_ext(sprDone, 0, 320, 240, 2, 2, 0, c_white, 1);}
	}else if re == 3{
		len[4]+=(1-len[4])/10;
		len[5]+=(1-len[5])/10;
		draw_primitive_begin(pr_trianglestrip);
		draw_set_color(c_black);
		i=0;
		repeat(61){
			i++;
			draw_vertex(320+lengthdir_x(45+len[4]*70-len[5]*115, i*6), 240+lengthdir_y(45+len[4]*70-len[5]*115, i*6));
			draw_vertex(320+lengthdir_x(45+len[4]*80-len[5]*125, i*6), 240+lengthdir_y(45+len[4]*80-len[5]*125, i*6));
		}
		draw_primitive_end();
	}
	if pe{
		if len[6]<1{len[6]+=(1.1-len[6])/10;}else if len[6]>1{len[6]=1;}
		if len[6] == 1{
			time[2]+=time[2]<17;
			if time[2]>16{if len[7]<1{len[7]+=(1.1-len[7])/10;}else if len[7]>1{len[7]=1;}}
		}
		gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
		draw_set_color(c_white);
		i=0;
		repeat(2){draw_rectangle(len[7]*640, 165+42*i, len[6]*640, 185+42*i, 0);i++;}
		repeat(2){draw_rectangle(640-len[6]*640, 165+42*i, 640-len[7]*641, 185+42*i, 0);i++;}
		i=0;
		repeat(4){draw_rectangle(56+42*i, 112+len[6]*256, 76+42*i, 112+len[7]*255, 0);i++;}
		repeat(4){draw_rectangle(742-42*i, 368-len[6]*256, 720-42*i, 368-len[7]*257, 0);i++;}
		gpu_set_blendmode(bm_normal);
	}
	if co{
		len[8]+=(1-len[8])/10;
		draw_primitive_begin(pr_trianglestrip);
		i=0;
		repeat(61){
			draw_vertex_color(320+lengthdir_x(60, 90-i*6*-len[8]), 240+lengthdir_y(60, 90-i*6*-len[8]), c_black, 1-len[16]);
			draw_vertex_color(320+lengthdir_x(65, 90-i*6*-len[8]), 240+lengthdir_y(65, 90-i*6*-len[8]), c_black, 1-len[16]);
			i++;
		}
		draw_primitive_end();
	}
	if fd{len[16]+=(1-len[16])/10;}
	if oc{
		len[9]+=(1-len[9])/10;
		if len[9]<1{len[9]+=(1.1-len[9])/10;}else if len[9]>1{len[9]=1;}
		draw_set_font(fntDetermine);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center);
		draw_text_transformed_color(320, 196+len[9]*20, "OBJECT\nCREATION", 1.5, 1.5, 0, c_black, c_black, c_black, c_black, len[9]-len[16]);
		i=0;
		repeat(16){
			i++;
			len[10][i]+=(1-len[10][i])/10;
			plx=312+((i mod 2)*2-1)*(1-len[10][i])*10;
			ply=286-i*2+dsin(current_time/10)*5;
			draw_sprite_part_ext(sprPlayer, 0, 0, 32-i*2, 32, 2, plx, ply, 1, 1, $241CEE, len[10][i]);
		}
	}
	if dt>0 && dt<3{
		if len[11]<1{len[11]+=(1.1-len[11])/10;}
		if len[11]>1{len[11]=1;}
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_set_alpha(len[11]);
		if len[13]<1{len[13]+=(1.1-len[13])/10;}else if len[13]>1{len[13]=1;}
		if len[13] == 1{if dt == 2{if len[14]<1{len[14]+=(1.1-len[14])/10;}else if len[14]>1{len[14]=1;}}}
		i=0;
		repeat(8){
			if len[12][i]<string_length(word[0, i]){len[12][i]+=0.25;}
			draw_text_transformed(-40+len[13]*60-len[14]*270, 140+i*25, string_copy(word[0, i], 1, len[12][i]), 2, 2, 0);
			i++;
		}
		i=0;
		repeat(8){
			if len[15][i]<string_length(word[1, i]){len[15][i]+=0.25;}
			draw_text_transformed(680-len[13]*240+len[14]*270, 140+i*25, string_copy(word[1, i], 1, len[15][i]), 2, 2, 0);
			i++;
		}
		draw_set_alpha(1);
		if len[14] == 1{dt++;}
	}
	if st{if !instance_exists(objUI){with(instance_create_depth(0, 0, 0, objUI)){activate=true};}st=0;}
	if mp{plx+=(128-plx)/10;objPlayer.x=plx;objPlayer.y=ply;}
	if dp{with(objPlayer){event_user(0);}}
	if sm == 1{
		len[11]=0;
		//bk=bkmk(90, 160, 460, 130, c_black, -1);
		//i=0;
		//repeat(4){bk[i].image_alpha=len[11];i++;}
		bk=instance_create_depth(0, 0, -1, objBoarder);
		bk.x1=90;bk.y1=160;bk.x2=550;bk.y2=290;
		bk.image_alpha=0;bk.image_blend=c_gray;
		global.bkxs=90;
		global.bkys=160;
		global.bkws=460;
		global.bkhs=130;
		sm=2;
	}
	if sm == 2{
		if len[11]<0.85{g=sin(current_time)*5;}else{g=1;dd=1;}
		if !dd{i=0;}
		len[11]+=(1-len[11])/20;
		bk.image_alpha=len[11];
		//with(butBall){if !run{image_alpha=other.len[11];}}
		//surface_set_target(global.sf[boarder]);
		//draw_set_alpha(0.5);
		//draw_set_color(c_black);
		//draw_rectangle(95, 165, 460+90-5, 160+130-5, 0);
		//draw_set_alpha(1);
		////with(butBall){if run<3{draw_self();}}
		//surface_reset_target();
		if dd == 0{
			repeat(global.bkhs){
				draw_surface_part_ext(global.sf[boarder], global.bkxs, global.bkys+g*i, global.bkws, 1, global.bkxs+((len[11]<0.85)?g/10:!g), global.bkys+g*i, 1, 1, c_white, len[11]);
				i++;
			}
		}else if dd == 1{
			draw_surface_part_ext(global.sf[boarder], global.bkxs, global.bkys, global.bkws, global.bkhs, global.bkxs, global.bkys, 1, 1, c_white, 1);
		}
	}
	if lt{
		i=0;
		if time[3] == 1{with(objBoarder){target=boarder1;}}
		time[3]+=0.2;
		//surface_set_target(global.sf[boarder1]);
		//draw_set_alpha(1);
		//draw_set_color(c_white);
		//draw_rectangle(95, 165, 460+90-5, 160+130-5, 0);
		len[50]+=(1-len[50])/20;
		objBoarder.image_blend=merge_color(c_gray, c_white, len[50]);
		with(butBall){if run<3{dmg=0;}}
		//with(butShadow){if sprite_index!=noone{draw_self();}}
//		surface_reset_target();
		if len[17][0,0] == 1{
			draw_surface_part_ext(global.sf[boarder1], global.bkxs, global.bkys, global.bkws, global.bkhs, global.bkxs, global.bkys, 1, 0, c_white, 1);
			dd=2;
		}else{
			repeat(global.bkws/32){
				i++;
				j=0;
				repeat(global.bkhs/32){
					j++;
					if i+j<time[3]{len[17][i,j]+=(1-len[17][i,j])/10;}
					if len[17][i,j]>0.95{len[17][i,j]=1;}
					draw_surface_part_ext(global.sf[boarder1], global.bkxs+i*32-32, global.bkys+j*32-32+1.25, 32+7, 32, global.bkxs+(i*32-len[17][i, j]*16-16), global.bkys+(j*32-len[17][i, j]*16-16), len[17][i, j], len[17][i, j], c_white, 1);
				}
			}
		}
	}
	if go{
		bkset(90-len[2]*40, 160-len[2]*80, 460+len[2]*80, 130+len[2]*160);
		og=1;
	}
	if og{
		len[20]+=(1.1-len[20])/10;
		if len[20]>1{len[20]=1;}
		og=2;
	}
	if og == 2{
		objBoarder.target=-1;
		lt=0;
		og=3;
	}
	if og == 3{
		len[51]+=(1-len[51])/20;
		objBoarder.image_blend=merge_color(c_white, c_gray, len[51]);
		objBoarder.image_alpha=1;
	}
}
