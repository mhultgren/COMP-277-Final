if (place_meeting(x,y,obj_player)) {
	draw_prompt = true;
	
	if (keyboard_check_pressed(ord("E"))) {
		if (!locked) scr_transition(true,target_room,target_x,target_y)
		else scr_new_text_box(string_upper(global.first_name), lockedText, 5);
	}
} else {
	draw_prompt = false;
}