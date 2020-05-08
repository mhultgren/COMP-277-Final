with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	global.begin_dialogue = true;

	with instance_create_layer(160, 32, "Entities", obj_ezekiel) {
		entity_activate_script = scr_new_text_box;
		entity_activate_args = ["EZEKIEL", "Let's get out of here!", 2];
		image_index = 3;
	}
	with instance_create_layer(160, 125, "Entities", obj_werewolf) image_index = 3;

	with instance_nearest(x, y, obj_player) {
		sprite_index = spr_player_up_idle;
	}
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

if (global.begin_dialogue) {
	global.begin_dialogue = false;
	scr_new_text_box("WEREWOLF", "ARGH..! WHAT HAVE YOU DONE?!", 6);
	scr_new_text_box("WEREWOLF", "SCREW YOU\n" + string_upper(global.first_name) + " " + string_upper(global.last_name) + "!!!!", 6);
}

if (!global.textOnScreen && instance_exists(obj_werewolf)) {
	with instance_nearest(x, y, obj_werewolf) instance_destroy();
	
	scr_new_text_box("EZEKIEL", "We did it!!", 2);
	scr_new_text_box("EZEKIEL", string(global.first_name) + ", thank you for your help.", 2);
	scr_new_text_box("EZEKIEL", "If you hadn't come to town, we'd all be done for.", 2);
	scr_new_text_box("EZEKIEL", "Now come on, let's get out of this cave.", 2);
} 

if (!global.textOnScreen && !instance_exists(obj_werewolf)) {
	with instance_nearest(0, 0, obj_door) target_room = rm_end;
	
	global.cutscene = false;
	instance_destroy();
}