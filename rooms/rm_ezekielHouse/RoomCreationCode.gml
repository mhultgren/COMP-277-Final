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