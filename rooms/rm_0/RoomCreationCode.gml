surface_resize(application_surface, 640, 480);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.night) instance_create_layer(0, 0, "Entities", obj_night);

if (global.day_number == 2) {
	if (global.horace_room_investigated && !global.bellboy_disappearance_cutscene) {
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_bellboy_disappearance_cutscene;
		}
	}
	
	if (global.ezekiel_debrief && !global.stranger_cutscene) {
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_stranger_fight;
		}
	}
	
	if (global.fought_stranger && global.current_enemy_health <= 0) {
		global.fought_stranger = false;
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_stranger_escape;
		}
	}
}