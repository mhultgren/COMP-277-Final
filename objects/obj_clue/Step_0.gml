if (collision_circle(x, y, 30, obj_player, false, true)) {
	draw_prompt = true;
	
	if (keyboard_check_pressed(ord("E"))) {
		if (script != 0) script_execute(script);
		instance_destroy();
	}
} else draw_prompt = false;