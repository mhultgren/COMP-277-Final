// use obj_boundary on room to set invisible walls

if keyboard_check(ord("W")) {
	if !place_meeting(x, y - player_speed, obj_boundary) y -= player_speed;
}

if keyboard_check(ord("A")) {
	if !place_meeting(x - player_speed, y, obj_boundary) x -= player_speed;
}

if keyboard_check(ord("S")) {
	if !place_meeting(x, y + player_speed, obj_boundary) y += player_speed;
}

if keyboard_check(ord("D")) {
	if !place_meeting(x + player_speed, y, obj_boundary) x += player_speed;
}

if place_meeting(x, y, obj_road) {
	player_speed = 8;
} else {
	player_speed = 5;
}