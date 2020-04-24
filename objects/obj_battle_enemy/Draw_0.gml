draw_self();

draw_set_color(c_red);
draw_rectangle(275, 319, 275 + (max_width * (current_enemy_health / enemy_health)), 324, false);
draw_set_color(c_white);