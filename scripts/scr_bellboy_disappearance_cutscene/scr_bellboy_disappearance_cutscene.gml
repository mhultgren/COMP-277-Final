with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.bellboy_disappearance_cutscene = true;
	global.cutscene = true;
	global.begin_dialogue = true;
	global.walk_to_player = true;
	obj_player.sprite_index=spr_player_down_idle;
	
	instance_create_layer(480, 282, "Entities", obj_ezekiel);
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

with instance_nearest(x, y, obj_ezekiel) {
	if (x <= 480 && y <= 225) {
		global.walk_to_player = false;
		image_index = 1;
		
		obj_player.sprite_index=spr_player_down_idle;
		
		if (global.begin_dialogue) {
			scr_new_text_box("EZEKIEL", "Bad news, " + string(global.first_name) + "!", 2);
			scr_new_text_box("EZEKIEL", "You know the bellboy? The one you beat\nthe crap out of last night??", 2, ["0:That rings a bell.", "0:What about him?"]);
			scr_new_text_box("EZEKIEL", "He's gone! Like... GONE gone, you know?\nUp and disappeared!", 2);
			scr_new_text_box("EZEKIEL", "C'mon, we gotta head to the hotel,\ngotta get on the trail while it's fresh!", 2);
			
			walk_to_inn = true;
			
			global.begin_dialogue = false;
		}
	}
	
	if (global.walk_to_player) {
		if (x != 480) x -= 3;
		if (y != 225) y -= 3;
	}
}


if (!instance_exists(obj_ezekiel)) {
	global.cutscene = false;
	instance_destroy();
}