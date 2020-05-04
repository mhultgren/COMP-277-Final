if (just_unpaused) {
	with (all) image_speed = gamePausedSpeed;
	show_debug_message("resize");
	show_debug_message(room);
	if (room!=rm_0 && room!=rm_forest){
	surface_resize(application_surface, room_width, room_height);}
	show_debug_message("resize");
	just_unpaused = false;
}

if (keyboard_check_pressed(vk_escape)) {
	if (global.textOnScreen==false && room != rm_battle) {
		
		global.gamePaused = !global.gamePaused;

	
	// pauses game by freezing all images in place
		if (global.gamePaused) {
			
			with (all) {
				gamePausedSpeed = image_speed;
				image_speed = 0;
				pausedRoom = room;
			}
			room_persistent = true;
			room_goto(pause_menu);
		} else {
			just_unpaused = true;
			room_goto(pausedRoom);
			room_persistent = false;
		}
	}
}


if (battleEnded) {
	room_persistent = false;
	battleEnded = false;
}

global.current_player_health = clamp(global.current_player_health, 0, global.player_health);

if (global.current_player_health == 0) {
	game_restart();
}