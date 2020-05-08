if (draw_fur) {
	draw_set_color(c_white);
	draw_rectangle(166, 7, 466, 307, false);
	draw_sprite_stretched(spr_fur, 0, 266, 70, sprite_width * 4, sprite_height * 4);
}