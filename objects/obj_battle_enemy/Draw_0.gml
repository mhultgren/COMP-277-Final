draw_self();

draw_set_color(c_red);
draw_rectangle(300, 319, 300 + (max_width * (current_enemy_health / enemy_health)), 324, false);
draw_set_color(c_white);

if (damaged) image_blend = c_red;
else image_blend = c_white;

if (hit) {
	draw_set_color(c_red);
	draw_set_alpha(1 - (hit_counter / room_speed));
	
	draw_text_transformed(x + 64 + (hit_counter/2), y - 64 - (hit_counter/2), 
		"-" + string(global.player_attack_power), 2, 2, 0);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
}

if (miss) {
	draw_set_alpha(1 - (miss_counter / room_speed));
	draw_text_transformed(x + 64 +  (miss_counter/2), y - 64 - (miss_counter/2),
		"MISS", 1.75, 1.75, 0);
	draw_set_alpha(1);
}

if (attacking) {
	draw_set_alpha(1 - (attacking_counter / room_speed));
	draw_text_transformed(x + 64 +  (attacking_counter/2), y - 64 - (attacking_counter/2),
		attacking_string, 1.75, 1.75, 0);
	draw_set_alpha(1);
}