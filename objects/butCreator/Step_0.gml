switch(run){
	case 0:
		x = (global.bkws-global.bkxs)/2+global.bkxs;
		y = global.bkys+15;
		len[0]++;
		if len[0] mod 15 == 0{
			dir=random_range(-20, 200);
			a=instance_create_depth(x, y, depth, butBall);
			a.image_blend=c_black;
			a.direction=dir+180;
			a.friction=-0.1;
			a.speed=1;
			a.run=run;
		}
		surface_set_target(global.sf[1]);
		with(butBall){draw_self();}
		surface_reset_target();
		break;
	case 1:
		break;
}
