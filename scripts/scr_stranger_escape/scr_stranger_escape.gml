with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
	with instance_create_layer(95, 600, "Entities", obj_stranger) image_index = 1;
	scr_new_text_box("STRANGER", "You're stronger than I thought!", 6);
	scr_new_text_box("STRANGER", "This won't be the end..\nLeave while you have the chance!", 6);
}

if (!global.textOnScreen) {
	with instance_nearest(x, y, obj_stranger) disappear = true;
}

if (!instance_exists(obj_stranger)) {
	scr_add_evidence(4, "Had a run-in with a mysterious stranger.");
	scr_new_text_box(string_upper(global.first_name), "What the--? They disappeared..", 5);
	scr_new_text_box(string_upper(global.first_name), "What have I gotten myself into..", 5);
	global.cutscene = false;
	instance_destroy();
}