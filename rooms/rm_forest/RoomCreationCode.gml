if (global.night) instance_create_layer(0, 0, "Entities", obj_night);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(925, 100, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

with instance_create_layer(265, 62, "Entities", obj_farmer) {
	entity_activate_script = scr_new_text_box;
	entity_activate_args = ["LEROY", "Don't mind me, just tending to my fields.", 4];
	entity_npc = true;
}

if (global.day_number == 3) {
	with instance_nearest(0, 0, obj_farmer) {
			entity_activate_args = ["LEROY", "Good luck pardner.", 4];
	}
	if (global.talk_to_ryan && !global.talked_to_leroy) {
		with instance_nearest(0, 0, obj_farmer) {
			entity_activate_args = ["LEROY", "Howdy pardner, what can 'ol Leroy do ya for?", 4, ["40:Did you hear a noise in the woods last night?"]];
		}
	}
}