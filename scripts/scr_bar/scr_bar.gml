if (global.day_number == 1) {
	if (global.motel_cutscene && !global.bellboy_fought) {
		with instance_nearest(x, y, obj_bartender) {
			instance_destroy();
		}

		with instance_create_layer(128, 20, "Entities", obj_bartender) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BARTENDER", "You came for the bellboy right? He's right there. \nYou can't miss him, he's the only customer after all.", 0, ["0:Ok."]];
			entity_npc = true;
		}
	
		with instance_create_layer(191, 52, "Entities", obj_bellboy) {
			entity_npc=true;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BELLBOY", "And what're you lookin' at?", 4, ["8:You.", "9:I don't want trouble."]];
		}
	}

	else if (global.just_fought) {
		global.just_fought = false;
	
		with instance_nearest(x, y, obj_bartender) {
			instance_destroy();
		}

		with instance_create_layer(128, 20, "Entities", obj_bartender) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BARTENDER", "Thanks for dealing with him, he was a little\ntoo drunk. I'd give you a free drink if we were\nmaking any money.", 0, ["13:Just another day on the job.", "0:Thanks, I guess?"]];
			entity_npc = true;
		}
	
		instance_create_layer(191, 52, "Entities", obj_bellboy);
	
		with instance_nearest(x, y, obj_player) {
			x = global.pastX;
			y = global.pastY;
		}
	
		global.bellboy_cutscene = true;
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_bellboy_cutscene;
		}
	}
}