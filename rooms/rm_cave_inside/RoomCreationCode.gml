surface_resize(application_surface, 640, 480);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(223, 234, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (!global.werewolf_fought) {
	scr_werewolf_cutscene();
} 
else if (global.werewolf_fought && !global.werewolf_defeated) {
	with instance_create_layer(x, y, "Player", obj_cutscene) {
		script = scr_get_gun;
	}
}
else if (global.werewolf_defeated) {
	with instance_create_layer(x, y, "Player", obj_cutscene) {
		script = scr_end;
	}
}