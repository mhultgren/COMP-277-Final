if position_meeting(mouse_x, mouse_y, id) {
	image_index = 1;
} else image_index = 0;

if mouse_check_button_pressed(mb_left) {
	room_goto(rm_controls);
}