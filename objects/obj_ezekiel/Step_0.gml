if (!global.textOnScreen && leave_station) {
	
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