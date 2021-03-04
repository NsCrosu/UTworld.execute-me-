function bkset(xs, ys, ws, hs){
	//mk[0].x = xs;
	//mk[0].y = ys;
	//mk[0].xs = ws-5;
	//mk[1].x = xs;
	//mk[1].y = ys;
	//mk[1].ys = hs-5;
	//mk[2].x = xs;
	//mk[2].y = ys+hs-5;
	//mk[2].xs = ws-5;
	//mk[3].x = xs+ws-5;
	//mk[3].y = ys;
	//mk[3].ys = hs-5;
	if instance_exists(objBoarder){
		with(objBoarder){
			x1 = xs;
			y1 = ys;
			x2 = xs+ws;
			y2 = ys+hs;
		}
		global.bkxs = xs;
		global.bkys = ys;
		global.bkws = ws;
		global.bkhs = hs;
	}else{
		return false;
	}
}
