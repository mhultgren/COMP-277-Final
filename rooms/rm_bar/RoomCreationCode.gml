if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(142, 175, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

scr_bar();