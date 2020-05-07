if (!global.betty_dialogue) {
	if (global.horace_room_investigated) {
		global.betty_dialogue = true;
		
		with instance_nearest(141, 222, obj_door) {
			locked = true;
			lockedText = "I should talk to Betty before leaving.";
		}
		
		with instance_nearest(x, y, obj_betty) instance_destroy();
		
		with instance_create_layer(268, 157, "Entities", obj_constable) {
			image_index = 3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["CONSTABLE", "How about you do your job and stop talking to me?"];
			entity_npc = true;
		}
		
		with instance_create_layer(201, 157, "Entities", obj_betty) {
			image_index=3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BETTY", "Find anything?", 7, ["21:Yes."]];
			entity_npc = true;
		}
	} else {
		with instance_nearest(x, y, obj_betty) instance_destroy();

		with instance_create_layer(268, 157, "Entities", obj_constable) {
			image_index = 3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["CONSTABLE", "How about you do your job and stop talking to me?"];
			entity_npc = true;
		}

		with instance_create_layer(201, 157, "Entities", obj_betty) {
			image_index=3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BETTY", "Well hello there sonny, you must be that detective\nI've been hearing about.", 7, ["18:That I am.", "18:You're goddamn right I am."]];
			entity_npc = true;
		}
	}
} else {
	with instance_nearest(x, y, obj_betty) instance_destroy();
	
	with instance_nearest(141, 222, obj_door) {
		locked = true;
		lockedText = "I better take a look at Horace's room before I leave";
	}
	
	with instance_nearest(306, 122, obj_door) {
		locked = false;
	}
	
	with instance_create_layer(201, 157, "Entities", obj_betty) {
		image_index=3;
		entity_activate_script = scr_new_text_box;
		entity_activate_args = ["BETTY", "Take a look at Horace's room on the right.", 7, ["0:Alright then.", "0:Fine."]];
		entity_npc = true;
	}
}