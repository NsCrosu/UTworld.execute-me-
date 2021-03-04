switch(run){
	case 0:
		xx=(global.bkws-global.bkxs)/2+global.bkxs*1.5+side*80;
		yy=global.bkys+15;
		len[0]++;
		if len[0] mod 9 == 0{
			dir=random_range(20+(side-1)*5, 160+(side-1)*-5);
			var a=instance_create_depth(xx, yy, depth, butBall);
			a.image_blend=butColor.red;
			a.direction=dir+180;
			a.friction=-0.1;
			a.speed=1;
			a.run=8;
		}
		break;
	case 1:
		len[0]++;
		if len[0] == 1{
			i=0;
			repeat(15){
				i++;
				var a=instance_create_depth(xx+lengthdir_x(32, i*12), yy+lengthdir_y(32, i*12), depth, butBall);
				a.xx=xx;
				a.yy=yy;
				a.image_alpha=0;
				a.len[0]=i*24;
				a.run=brun;
			}
		}
		break;
	case 2:
		len[0]++;
		if len[0] == 1{
			i=0;
			repeat(90/2){
				i++;
				var a=instance_create_depth(xx+lengthdir_x(700, i*8), yy+lengthdir_y(700, i*8), depth, butBall);
				a.xx=xx;
				a.yy=yy;
				a.image_alpha=0;
				a.image_blend=butColor.red;
				a.len[1]=i*8;
				a.des=0;
				a.run=brun;
			}
		}
		break;
	case 3:
		len[0]++;
		if side == 0{xx=global.bkxs-45;}else if side == 1{yy=global.bkys-15;}
		if len[0] mod 40 == 0{
			var a=instance_create_depth(xx, yy, depth, butBall);
			a.direction=(!side)?0:-90;
			a.speed=1.5;
			a.friction=-0.1;
			a.image_blend=butColor.red;
			a.run=run;
		}
		break;
	case 4:
		len[0]++;
		if len[0] == 1{
			i=0;
			repeat(5){
				i++;
				var a=instance_create_depth(xx, yy, depth, butBall);
				a.xx=xx;
				a.yy=yy;
				a.image_blend=butColor.red;
				a.image_alpha=0;
				a.len[0]=i*72;
				a.len[1]=side;
				a.run=run;
			}
		}
		break;
}
