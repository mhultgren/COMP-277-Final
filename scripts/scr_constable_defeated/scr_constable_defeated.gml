with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
	scr_new_text_box("CONSTABLE", "How did you defeat me?!");
	scr_new_text_box("CONSTABLE", "Whatever, you won't get in there anyways.\nDoor's locked, and while we were fighting I swallowed the key!");
	scr_new_text_box("CONSTABLE", "Pretty smart of me, huh? Unless you know how\nto pick a lock, no way you're getting through. B-)");
	scr_new_text_box("CONSTABLE", "You don't know how to pick a lock, right?");
}

if (!global.textOnScreen) {
	global.cutscene = false;
	instance_destroy();
}