//if place_meeting(x, y, objPlayer){
//	with(objPlayer){
//		move_outside_solid(point_direction(x, y, objBoarder.mx, objBoarder.my), -1);
//	}
//}
with(objPlayer){
	if x < other.x1+5+8{
		x = other.x1+5+8;
	}else if x > other.x2-5-8{
		x = other.x2-5-8;
	}
	if y < other.y1+5+8{
		y = other.y1+5+8;
	}else if y > other.y2-5-8{
		y = other.y2-5-8;
	}
}
