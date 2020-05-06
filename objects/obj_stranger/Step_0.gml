if (disappear) {
	counter++;
	
	if (counter == room_speed * 1.5) {
		complete = true;
		disappear = false;
	}
}

if (complete) {
	a -= .01;
	
	if (a == 0) instance_destroy();
}