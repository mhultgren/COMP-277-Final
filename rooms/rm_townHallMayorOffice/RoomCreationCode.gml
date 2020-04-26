if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

// make sure to declare new global variables relating to cutscenes
// or other events which will only happen sometimes
// in the game_variables script
if (!global.mayor_cutscene) {
	global.mayor_cutscene = true;
	with instance_create_layer(x, y, "Player", obj_cutscene) {
		script = scr_mayor_cutscene;
	}
}