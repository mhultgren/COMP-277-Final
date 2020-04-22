//show_debug_message(string(room_persistent));
if (keyboard_check_pressed(vk_escape)) {
	if (global.textOnScreen==false) {
		
		global.gamePaused = !global.gamePaused;

	
	// pauses game by freezing all images in place
		if (global.gamePaused) {
			
			with (all) {
				gamePausedSpeed = image_speed;
				image_speed = 0;
				pausedRoom=room;
			}
			room_persistent=true;
			room_goto(pause_menu);
		} else {
			room_goto(pausedRoom);
			image_speed = gamePausedSpeed;
			room_persistent=false;
			//justPaused=true;
		}
	}
}
//if (justPaused){
//	room_persistent=false;
//	justPaused=false;
//}