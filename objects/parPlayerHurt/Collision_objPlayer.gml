with(objPlayer){
	if nowState != state.die{nowState = state.hurt;}
	dmgHP = (undefined == other.dmgHP) ? 2 : other.dmgHP;
}
