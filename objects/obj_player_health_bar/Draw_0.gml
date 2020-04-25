draw_set_color(c_green);
draw_rectangle(224, 400, 224 + (max_width * (global.current_player_health / global.player_health)), 432, false);
draw_set_color(c_white);
draw_rectangle(223, 399, 417, 433, true);
draw_text(320, 400, global.current_player_health);