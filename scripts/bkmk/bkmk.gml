function bkmk(xs, ys, ws, hs){
	if undefined == xs{xs = 30;}
	if undefined == ys{ys = 250;}
	if undefined == ws{ws = 580;}
	if undefined == hs{hs = 140;}
	var blend = c_white;
	var dep = 0;
	if argument_count > 4{blend = argument[4];}
	if argument_count > 5{dep = argument[5];}
	var mk = array_create(4, 0);
	mk[0] = instance_create_depth(xs, ys, 0, objBlock);
	mk[0].xs = ws-5;
	mk[0].depth = dep;
	mk[0].image_blend = blend;
	mk[1] = instance_create_depth(xs, ys, 0, objBlock);
	mk[1].ys = hs-5;
	mk[1].depth = dep;
	mk[1].image_blend = blend;
	mk[2] = instance_create_depth(xs, ys+hs-5, 0, objBlock);
	mk[2].xs = ws-5;
	mk[2].depth = dep;
	mk[2].image_blend = blend;
	mk[3] = instance_create_depth(xs+ws-5, ys, 0, objBlock);
	mk[3].ys = hs-5;
	mk[3].depth = dep;
	mk[3].image_blend = blend;
	global.bkxs = xs;
	global.bkys = ys;
	global.bkws = ws;
	global.bkhs = hs;
	
	return mk;
}
