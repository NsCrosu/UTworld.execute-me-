with(butCreator){if run<3{instance_destroy();}}
with(butBall){if run<3{instance_destroy();}}
with(instance_create_depth(0, 0, 0, butCreator)){run=3;side=0;yy=160+43.3;}
with(instance_create_depth(0, 0, 0, butCreator)){run=3;side=0;yy=160+43.3*2;}
i=0;
repeat(5){
	i++;
	with(instance_create_depth(0, 0, 0, butCreator)){run=3;side=1;xx=-45+global.bkxs+(global.bkxs+global.bkws)/6*other.i;}
}
with(instance_create_depth(0, 0, 0, butCreator)){run=4;side=1;xx=((global.bkws-global.bkxs)/2+global.bkxs*1.5-80);yy=global.bkys+45;}
with(instance_create_depth(0, 0, 0, butCreator)){run=4;side=1;xx=((global.bkws-global.bkxs)/2+global.bkxs*1.5+80);yy=global.bkys+45;}
with(instance_create_depth(0, 0, 0, butCreator)){run=4;side=-1;xx=((global.bkws-global.bkxs)/2+global.bkxs*1.5-80)+80;yy=global.bkys+45+40;}
