if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 1) {
	if (global.mayor_cutscene && !global.motel_cutscene) {
		global.motel_cutscene = true;
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_motel_cutscene;
		}
	}

	if (global.bellboy_fought) {
		scr_motel_night_1();
	}
}