if (collision_circle(x, y, 30, obj_player, false, true)) {
	if (!global.textOnScreen) draw_sprite(spr_key_e, 0, x-16, y-32);
	
	if (keyboard_check_pressed(ord("E"))) {
		if (script != 0) script_execute(script);
		instance_destroy();
	}
}