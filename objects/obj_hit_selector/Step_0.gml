if (movingRight) {
	if (x < init_x + x_boundary_right) x += bar_speed;
	else movingRight = false;
} else {
	if (x > init_x) x -= bar_speed;
	else movingRight = true;
}