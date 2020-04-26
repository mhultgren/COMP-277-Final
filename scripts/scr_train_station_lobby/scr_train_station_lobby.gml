// makes sure the initial variables are only set once,
// using the cutscene_start variable found in the obj_cutscene object
with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	global.ezekiel_dialogue = true;
	global.walk_to_ezekiel = true;
	
	with instance_create_layer(220, 126, "Entities", obj_ezekiel) {
			entity_npc = true;
	}

	// deletes the regular station attendant
	// as his dialogue is different during the intro
	with instance_nearest(x, y, obj_station_attendant) {
		instance_destroy();
	}

	with instance_create_layer(31, 31, "Entities", obj_station_attendant) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["Don't talk to me, I'm busy.", 1];
			entity_npc = true;
	}
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

// make sure to reference player when referring to the player's location
with instance_nearest(x, y, obj_player) {
	if (place_meeting(x, y-20, obj_ezekiel)) {
		global.walk_to_ezekiel = false;
	
		if (global.ezekiel_dialogue) {
			scr_new_text_box("Welcome to town! Hope the trip wasn't too boring.", 2, 
						["5:It was nice!", 
						"6:That was the most boring train ride I've ever taken."]);
		
			global.ezekiel_dialogue = false;
		}
	}
	
	if (global.walk_to_ezekiel) {
		y -= player_speed;
	}
}

if (global.intro_done) {
	global.cutscene = false;
	instance_destroy();
}