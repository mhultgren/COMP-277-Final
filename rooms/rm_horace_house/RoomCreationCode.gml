if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(143, 176, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 2) {
	if (!global.betty_dialogue || !global.horace_room_investigated) {
		scr_betty_dialogue();
	}
}