if (disappear) {
	draw_set_color(c_white);
	draw_rectangle(0, 0, 1030, 1300, false);
}

if (complete) {
	draw_set_alpha(a);
	draw_set_color(c_white);
	draw_rectangle(0, 0, 1030, 1300, false);
	draw_set_alpha(1);
}