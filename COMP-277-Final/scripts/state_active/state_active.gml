// use obj_boundary on room to set invisible walls
if keyboard_check(ord("W")) {
	if !place_meeting(x, y - player_speed, obj_tangible) y -= player_speed;
}

if keyboard_check(ord("A")) {
	if !place_meeting(x - player_speed, y, obj_tangible) x -= player_speed;
}

if keyboard_check(ord("S")) {
	if !place_meeting(x, y + player_speed, obj_tangible) y += player_speed;
}

if keyboard_check(ord("D")) {
	if !place_meeting(x + player_speed, y, obj_tangible) x += player_speed;
}

if place_meeting(x, y, obj_road) {
	player_speed = 5;
} else {
	player_speed = 3;
}

if (keyboard_check(ord("E"))) {
	activate = instance_place(x, y-30, obj_entity);
	
	if (activate != noone && activate.entity_activate_script != -1) {
		scr_execute_array(activate.entity_activate_script, activate.entity_activate_args);
		
		// add change to image index as well once sprites are fleshed out to face four directions
		if (activate.entity_npc) {
			with (activate) direction = point_direction(x, y, other.x, other.y);
		}
	}
}