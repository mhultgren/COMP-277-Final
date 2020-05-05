if (global.day_number == 1) {
	if (!global.textOnScreen && leave_station) {
		image_index = 1;
		y -= 1;
	}

	if place_meeting(x, y, obj_door) {
		leave_station = false;
		counter++;
	}

	if (counter == room_speed * 1) {
		global.intro_done = true;
		instance_destroy();
	}
}

if (global.day_number == 2) {
	if (!global.textOnScreen && walk_to_inn) {
		if (y < 300) {
			image_index = 3;
			y += 3;
		}
		else {
			image_index = 2;
			x -= 3;
		}
		
		if (x <= 145) {
			instance_destroy();
		}
	}
}