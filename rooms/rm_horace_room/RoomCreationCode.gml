surface_resize(application_surface, 640, 480);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(356, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (!global.horace_room_investigated) {
	with instance_create_layer(235, 63, "Clues", obj_flowers) {
		script = scr_find_flowers;
	}
}