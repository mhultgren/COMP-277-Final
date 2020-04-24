if (place_meeting(x,y,obj_player)) {
	draw_prompt = true;
	
	if (keyboard_check_pressed(ord("E"))) scr_transition(true,target_room,target_x,target_y)
} else {
	draw_prompt = false;
}