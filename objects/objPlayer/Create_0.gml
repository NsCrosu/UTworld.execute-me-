enum mode{
	red,
	blue
}
enum state{
	normal,
	slow,
	hurt,
	die
}
modes = array_create(2, 0);
states = array_create(3, 0);
moveable = false;
nowMode = mode.red;
nowState = state.normal;
invTime = 40;
dmgHP = 2;
nowHP = 20;
maxHP = 20;
spd = 3;
