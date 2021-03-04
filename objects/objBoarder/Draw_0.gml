mx = (x1+x2)/2;
my = (y1+y2)/2;
var ld = point_distance(x1, y1, mx, my);
var la = point_direction(mx, my, x1, y1);
if target != -1{surface_set_target(global.sf[target]);}
draw_sprite_ext(sprite_index, -1, mx+lengthdir_x(ld, la+image_angle), my+lengthdir_y(ld, la+image_angle), (x2-x1)/5/2.9935, (y2-y1)/5/2.9935, image_angle, image_blend, image_alpha);
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_rectangle(x1+5, y1+5, x2-5, y2-5, false);
draw_set_color(c_white);
draw_set_alpha(1);
if target != -1{surface_reset_target();}
