surface_resize(application_surface, 640, 480);
if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

#region day 1
if (global.day_number == 1) {
	with instance_nearest(271, 22, obj_door) {
		locked = true;
		lockedText = "I don't have the key.";
	}
	
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
#endregion

#region day 2
if (global.day_number == 2) {
	with instance_nearest(145, 16, obj_door) locked = true;
	
	if (!global.bellboy_disappearance_cutscene) {
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Morning detective. Ready to work?", 3, ["16:I was born ready.", "17:I'd rather stay in bed if that's OK.."]];
			entity_npc = true;
		}
	} else if (!global.bellboy_room_investigated){
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}
		
		with instance_nearest(143, 222, obj_door) {
			locked = true;
			lockedText = "I should investigate this disappearance.";
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Detective, I'm sure you heard the news?", 3, ["22:The bellboy's gone?"]];
			entity_npc = true;
		}
		
		with instance_create_layer(47, 175,"Entities", obj_ezekiel) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["EZEKIEL", "This is not good!!", 2];
			entity_npc = true;
		}
	} else if (!global.karen_debrief) {
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Well, anything?", 3, ["23:Yes.", "23:You know it."]];
			entity_npc = true;
		}
		
		with instance_nearest(143, 222, obj_door) {
			locked = true;
			lockedText = "I should debrief with Karen.";
		}
	} else if (global.ezekiel_debrief) {
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Long day?", 3, ["28:It was nothing.", "29:You said it."]];
			entity_npc = true;
		}
	}
}
#endregion