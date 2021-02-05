function sh_variable_instance_set(args){
	variable_instance_set(asset_get_index(args[1]), args[2], real(args[3]));
}
function meta_variable_instance_set(){
	return{
		description: "set an instance variable to a new value",
		arguments: ["instance_name", "variable_name", "value"],
		// suggestions: [],
		argumentDescriptions: [
			"the ID of the instance",
			"the name of the variable",
			"the new value of the variable"
		]
	}
}

function sh_variable_global_set(args){
	variable_global_set(args[1], real(args[2]));
}
function meta_variable_global_set(){
	return{
		description: "set a global variable to a new value",
		arguments: ["name", "value"],
		argumentDescriptions: [
			"the name of the global variable",
			"the new value of the global variable"
		]
	}
}

function sh_variable_instance_get(args){
	var res = variable_instance_get(asset_get_index(args[1]), args[2]);
	return "The variable [ " + args[2] + " ] of [ " + args[1] + " ] " + "is " + string(res);
}
function meta_variable_instance_get(){
	return{
		description: "get the value of an instance",
		arguments: ["instance_name", "variable_name"],
		argumentDescriptions: [
			"the name of the instance",
			"the name of the variable"
		]
	}
}

function sh_variable_global_get(args){
	var res = variable_global_get(args[1]);
	return "The value of global variable [ " + args[1] + " ] is [ " + string(res) + " ] !";
}
function meta_variable_global_get(){
	return{
		description: "get the value of a global variable",
		arguments: ["name"],
		argumentDescriptions: [
			"the name of the global variable"
		]
	}
}

function sh_room_speed(args){
	try{
		room_speed = real(args[1]);
		return "Room speed setted to [ " + string(args[1]) + " ] !";
	}catch(_){
		return "ERROR! Not a vaild value!";
	}
}
function meta_room_speed(){
	return{
		arguments: ["fps"]
	}
}

function sh_room_restart(){
	room_restart();
	return "Room [ " + room_get_name(room) + " ] restarted!";
}

function sh_game_restart(){
	game_restart();
	return;
}

function sh_instance_create(args){
	instance_create(args[1], args[2], asset_get_index(args[3]));
	return "Successfully created [ " + args[3] + " ] at [ " + args[1] + ", " + args[2] + " ] !";
}
function meta_instance_create(){
	return{
		description: "create an instance",
		arguments: ["x", "y", "obj"]
	}
}

function sh_instance_destroy(args){
	var ins = asset_get_index(args[1]);
	if ins != -1{
		with(ins){instance_destroy();}
		return "Successfully destroyed instance [ " + args[1] + " ] !";
	}else{
		return "ERROR! Instance not found!";
	}
}
function meta_instance_destroy(){
	return{
		description: "destroy an instance",
		arguments: ["instance_name"]
	}
}
