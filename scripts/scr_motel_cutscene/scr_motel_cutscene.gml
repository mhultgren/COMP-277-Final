with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	global.begin_dialogue = true;
	global.walk_to_owner = true;

	with instance_nearest(x, y, obj_motel_owner) {
		instance_destroy();
	}

	with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
		entity_activate_script = scr_new_text_box;
		entity_activate_args = ["MOTEL OWNER", "Come back here when you talk to the bellboy.", 3];
		entity_npc = true;
	}
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

with instance_nearest(x, y, obj_player) {
	if (x <= 45 && y <= 90) {
		global.walk_to_owner = false;
	
		if (global.begin_dialogue) {
			scr_new_text_box("MOTEL OWNER", "Come for a room?", 3, ["0:That's right."]);
			scr_new_text_box("MOTEL OWNER", "Perfect, you must be Mr. Grey?", 3);
			scr_new_text_box("MOTEL OWNER", "Lucky for you, your room's complimentary.\nLet me get your room key now.", 3);
			scr_new_text_box("MOTEL OWNER", "BELLBOY!!!!", 3);
			scr_new_text_box("MOTEL OWNER", "...", 3);
			scr_new_text_box("MOTEL OWNER", "He should be here any second now..", 3);
			scr_new_text_box("MOTEL OWNER", "...", 3);
			scr_new_text_box("MOTEL OWNER", "...", 3);
			scr_new_text_box("MOTEL OWNER", "BELLBOY!!!!!!!!", 3);
			scr_new_text_box("MOTEL OWNER", "...", 3);
			scr_new_text_box("MOTEL OWNER", "I'm sorry detective, but it looks like the bellboy\nis absent. With business slow as it is,\nhe seems to think of his job as more of a pastime.", 3);
			scr_new_text_box("MOTEL OWNER", "Could you do me a favor and find him at the bar?\nAfter all, nothing is free in this world.\nLeast of all a motel room.", 3);
			scr_new_text_box("MOTEL OWNER", "A word of advice: the man takes his role as bellboy very seriously.\nHe won't give you your room key without my permission.", 3);
		
			global.begin_dialogue = false;
		}
	}
	
	if (global.walk_to_owner) {
		if (x != 45) x -= player_speed;
		if (y != 90) y -= player_speed;
	}
}

if (!global.begin_dialogue && !global.textOnScreen) {
	global.cutscene = false;
	instance_destroy();
}