// beginnaa!
with(instance_create_depth(320, 240, -1, objPlayer)){image_alpha = 0;}
log = instance_create_depth(0, 0, 1, objLog);
log.str+="World world = new World(2);";
cr = instance_create_depth(0, 0, 0, objDraw0);
