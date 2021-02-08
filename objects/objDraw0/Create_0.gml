len = array_create(30, 0);
len[3] = array_create(20, 0);
len[10] = array_create(20, 0);
len[12] = array_create(20, 0);
len[15] = array_create(20, 0);
len[17] = array_create(32, array_create(32, 0));
time = array_create(20, 0);
word = array_create(2, 0);
for(var i=0;i<20;++i){word[i] = array_create(10, 0);}
for(var i=0;i<4;++i){global.sf[i] = surface_create(640, 480);}
activate = false;
draw = false;
sk = 1;
on = 0;
re = 0;
go = 0;
pe = 0;
co = 0;
oc = 0;
dt = 0;
st = 0;
dp = 0;
fd = 0;
sm = 0;
mp = 0;
lt = 0;
dd = 0;
og = 0;
