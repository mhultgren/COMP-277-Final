surface_resize(application_surface, 640, 480);
if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(148, 161, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

#region day 2
if (global.day_number == 2) {
	if (global.bellboy_disappearance_cutscene && !global.karen_debrief) {
		with instance_nearest(0, 0, obj_ezekiel) instance_destroy();
	}
	
	if (global.karen_debrief && !global.ezekiel_debrief) {
		with instance_nearest(0, 0, obj_ezekiel) instance_destroy();
		with instance_create_layer(159, 64, "Entities", obj_ezekiel) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["EZEKIEL", "I'm glad you came, I've been meaning to talk to you.", 2, ["26:What's up?", "26:Spill the tea."]];
			entity_npc = true;
		}
	}
}
#endregion

#region day 3
if (global.day_number == 3) {
	with instance_nearest(0, 0, obj_ezekiel) {
		if (!global.night) {
			entity_activate_args = ["EZEKIEL", "I heard they've got a culprit over at the station.\nCan't say I trust that constable to catch anyone,\nbut we'll just have to see.", 2];
		} else instance_destroy();
	}
	
	if (global.night) {
		instance_create_layer(46, 94, "Entities", obj_empty_slash_marks);
		
		if (!global.ezekiel_missing) {
			global.ezekiel_missing = true;
			scr_new_text_box(string_upper(global.first_name), "Ezekiel?", 5);
			scr_new_text_box(string_upper(global.first_name), "Where he could he be?!", 5);
			scr_new_text_box(string_upper(global.first_name), "Are those.. slash marks?!", 5);
			scr_new_text_box(string_upper(global.first_name), "I've got to get the cave, fast!", 5);
		}
	}
}
#endregion