function crSd(){
	if(x!=xprevious){
		var a=instance_create_depth(x,y,depth+1,butShadow);
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
	}else if(y!=yprevious){
		var a=instance_create_depth(x,y,depth+1,butShadow);
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
	}else if(gravity!=0){
		var a=instance_create_depth(x,y,depth+1,butShadow);
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
	}else if(vspeed!=0){
		var a=instance_create_depth(x,y,depth+1,butShadow);
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
	}else if(hspeed!=0){
		var a=instance_create_depth(x,y,depth+1,butShadow);
		a.image_index=image_index;
		a.image_xscale=image_xscale;
		a.image_yscale=image_yscale;
	}
}
