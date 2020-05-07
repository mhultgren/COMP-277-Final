if (collision_circle(x, y, 35, obj_player, false, true)) {
	if (global.night) {
		draw_prompt = true;
	
		if (keyboard_check_pressed(ord("E"))) {
			go_to_sleep = true;
			draw_prompt = false;
			global.night = false;
			global.day_number++;
		}
	}
} else draw_prompt = false;

if (go_to_sleep) {
	a += .01;
	if (a == 1) {
		go_to_sleep = false;
		wake_up = true;
	}
}

if (wake_up) {
	sleep_count++;
	
	if (sleep_count >= room_speed) {
		a -= .01;
		if (a == 0) {
			sleep_count = 0;
			wake_up = false;
		}
	}
}