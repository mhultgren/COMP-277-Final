draw_set_color(c_white);
draw_set_font(global.pixel_font);

if (fading) {
	a -= .05;
	draw_set_alpha(a);
	
	if (a == 0) {
		text_i++;
		
		if (text_i >= array_length_1d(exposition_text)) {
			drawn_text = "";
		} else {
			drawn_text = exposition_text[text_i];
			appearing = true;
			fading = false;
		}
	}
}

if (appearing) {
	a += .05;
	draw_set_alpha(a);
	
	if (a == 1) {
		appearing = false;
	}
}

draw_text_ext_transformed(draw_x, y, drawn_text, 15, 430, 1, 1, 0);

draw_set_alpha(1);