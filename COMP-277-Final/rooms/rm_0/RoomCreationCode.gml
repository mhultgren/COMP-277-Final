if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (!global.tutorialDone) {
	global.tutorialDone = true;
	scr_new_text_box("Welcome to the COMP 277 Prototype!\nPress ENTER to continue.", 1, ["0:Continue."]);
	scr_new_text_box("Move with the WASD keys.", 1, ["0:Continue"]);
	scr_new_text_box("Press ENTER to interact with others!", 1, ["0:CONTINUE"]);
}