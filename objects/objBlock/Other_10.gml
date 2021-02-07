//surface_set_target(global.sf[1]);
//draw_clear_alpha(c_black, 0);
//gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
//draw_self();
//gpu_set_blendmode(bm_normal);
//surface_reset_target();

//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if surface_exists(global.sf[1]){
	surface_set_target(global.sf[1]);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
	surface_reset_target();
}else{
	global.sf[1] = surface_create(640, 480);
}
