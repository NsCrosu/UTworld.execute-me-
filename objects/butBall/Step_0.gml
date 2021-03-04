switch(run){
	case 1:
		len[0]+=2;
		len[1]+=(1-len[1])/10;
		image_alpha=len[1];
		image_blend=butColor.green;
		x=xx+lengthdir_x(32,len[0]);
		y=yy+lengthdir_y(32,len[0]);
		break;
	case 2:
		image_alpha=len[2];
		len[0]+=(655-len[0])/35;
		len[1]+=3;
		len[2]+=(1-len[2])/10;
		x=xx+lengthdir_x(700-len[0],len[1]);
		y=yy+lengthdir_y(700-len[0],len[1]);
		with(crSd()){target=boarder;}
		break;
	case 3:
		with(crSd()){target=boarder1;}
		break;
	case 4:
		with(crSd()){target=boarder1;}
		len[0]+=2*len[1];
		len[2]+=(1-len[2])/20;
		image_alpha=len[2];
		x=xx+lengthdir_x(32,len[0]);
		y=yy+lengthdir_y(32,len[0]);
		break;
	case 5:
		len[0]+=(655-len[0])/20;
		len[1]+=3;
		len[2]+=(1-len[2])/20;
		x=xx+lengthdir_x(700-len[0],len[1]);
		y=yy+lengthdir_y(700-len[0],len[1]);
		image_alpha=len[2];
		with(crSd()){target=boarder1;}
		break;
	case 6:
		len[0]+=2;
		len[1]+=(1-len[1])/20;
		image_alpha=len[1];
		image_blend=butColor.green;
		x=xx+lengthdir_x(32,len[0]);
		y=yy+lengthdir_y(32,len[0]);
		dmg=0;
		break;
	case 7:
		crSd();
		depth=-10;
		speed+=(2-speed)/10;
		image_blend=butColor.red;
		break;
	case 8:
		with(crSd()){target=boarder;}
		break;
}
