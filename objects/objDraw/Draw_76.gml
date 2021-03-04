var i=0;
repeat(4){
	if !surface_exists(global.sf[i]){global.sf[i]=surface_create(640, 480);}
	i++;
}
