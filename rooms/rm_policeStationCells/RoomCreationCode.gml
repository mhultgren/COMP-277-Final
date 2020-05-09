surface_resize(application_surface, 640, 480);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(159, 72, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 3) {
	instance_create_layer(78, 192, "Entities", obj_station_attendant)
	if (!global.talk_to_ryan) {
		with instance_nearest(0, 0, obj_station_attendant) {
			image_index = 1;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["RYAN", "What do you want?", 1, ["37:I want to talk about the disappearances."]];
			entity_npc = true;
		}
	} else {
		with instance_nearest(0, 0, obj_station_attendant) {
			image_index = 1;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["RYAN", "Please, go to the forest and find the culprit!", 1];
			entity_npc = true;
		}
	}
}