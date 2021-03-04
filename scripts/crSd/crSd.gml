function crSd(){
	if(x!=xprevious){
		a=instance_create_depth(x, y, depth+1, butShadow);
		a.sprite_index=sprite_index;
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
		a.image_blend=image_blend;
		a.image_angle=image_angle;
		return a;
	}else if(y!=yprevious){
		a=instance_create_depth(x, y, depth+1, butShadow);
		a.sprite_index=sprite_index;
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
		a.image_blend=image_blend;
		a.image_angle=image_angle;
		return a;
	}else if(gravity!=0){
		a=instance_create_depth(x, y, depth+1, butShadow);
		a.sprite_index=sprite_index;
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
		a.image_blend=image_blend;
		a.image_angle=image_angle;
		return a;
	}else if(vspeed!=0){
		a=instance_create_depth(x, y, depth+1, butShadow);
		a.sprite_index=sprite_index;
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
		a.image_blend=image_blend;
		a.image_angle=image_angle;
		return a;
	}else if(hspeed!=0){
		a=instance_create_depth(x, y, depth+1, butShadow);
		a.sprite_index=sprite_index;
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
		a.image_blend=image_blend;
		a.image_angle=image_angle;
		return a;
	}else{
		return object_index;
	}
}
