if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 3) {
	if (!global.talked_to_constable) {
		with instance_nearest(0, 0, obj_constable) {
			entity_activate_args = ["CONSTABLE", "And what are you here for? You may not have\nheard, but I solved the case while you were asleep.", 0, ["34:I came to speak with Ryan"]];
		}
	}
	
	if (global.fought_constable && !global.talk_to_ryan) {
		global.fought_constable = false;
		
		with instance_nearest(160, 231, obj_door) {
			locked = true;
			lockedText = "I'm not leaving until I talk to Ryan!";
		}
		
		with instance_nearest(0, 0, obj_constable) {
			entity_activate_args = ["CONSTABLE", "No way you're getting through that door.\nB-)"];
		}
		
		with instance_create_layer(x, y, "Player", obj_cutscene) {
			script = scr_constable_defeated;
		}
	}
	
	if (global.talk_to_ryan) {
		with instance_nearest(0, 0, obj_constable) {
			entity_activate_args = ["CONSTABLE", "I bet you feel real tough beating up a police officer.\nCan't believe I swallowed that key for nothing.."];
		}
	}
}