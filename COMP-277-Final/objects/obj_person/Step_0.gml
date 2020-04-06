if (place_meeting(x, y+30, obj_player)) {
	if (keyboard_check_pressed(vk_enter)) {
		if (!global.textOnScreen) NewTextBox(message, 0, responses);
	}
}