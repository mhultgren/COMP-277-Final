/// @desc Draw Textbox
NineSliceBoxStretched(spr_textBox, x1, y1, x2, y2, background);
draw_set_font(f_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
var print = string_copy(message, 1, textProgress);

if (responses[0] != -1) && (textProgress >= string_length(message)) {
	for (var i = 0; i < array_length_1d(responses); i++) {
		print += "\n";
		if (i == responseHighlighted) print += "> ";
		print += responses[i];
		if (i == responseHighlighted) print += " <";
	}
}

draw_text((x1+x2)/2, y1+8, print);
draw_set_color(c_white);
draw_text((x1+x2)/2, y1+7, print);