draw_self();

if (draw_prompt && !global.textOnScreen) {
	draw_sprite(spr_key_e, 0, x-16, y-32);
}

if (go_to_sleep || wake_up) {
	draw_set_alpha(a);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	
	draw_set_alpha(1);
}