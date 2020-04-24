draw_self();

for (var i=min_evidence_index; i<=max_evidence_index; i++) {
	var evidence = global.evidence_array[i];
	if (evidence[2] != "") {
		if (i == evidence_highlighted) {
			draw_set_color(c_red);
			draw_text_transformed(start_x, start_y + ((i-min_evidence_index)*evidence_height), evidence[2], 1.3, 1.3, 0);
			draw_set_color(c_white);
		} else {
			draw_text_transformed(start_x, start_y + ((i-min_evidence_index)*evidence_height), evidence[2], 1.3, 1.3, 0);
		}
	}
}