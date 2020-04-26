surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(223, 234, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

// creates cutscene variable if the intro has not yet been completed
if (!global.intro_done) instance_create_layer(x, y, "Player", obj_cutscene);