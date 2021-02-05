x = median(sprite_width/2, x, room_width-sprite_width/2);
y = median(sprite_height/2, y, room_height-sprite_height/2);
while(position_meeting(x+sprite_width/2, y, objBlock)){x-=0.01;}
while(position_meeting(x-sprite_width/2, y, objBlock)){x+=0.01;}
while(position_meeting(x,y+sprite_height/2, objBlock)){y-=0.01;}
while(position_meeting(x,y-sprite_height/2, objBlock)){y+=0.01;}
