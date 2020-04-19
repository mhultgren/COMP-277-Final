if (keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
	
	// pauses game by freezing all images in place
	if (global.gamePaused) {
		with (all) {
			gamePausedSpeed = image_speed;
			image_speed = 0;
		}
	} else {
		image_speed = gamePausedSpeed;
	}
}