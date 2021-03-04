if run>=3 && run<7{
	surface_set_target(global.sf[boarder1]);
	draw_self();
	surface_reset_target();
}else if run<3{
	surface_set_target(global.sf[boarder]);
	draw_self();
	surface_reset_target();
}else if run == -1{
	draw_self();
}else if run == 7{
	draw_self();
}else if run>8{
	draw_self();
}
