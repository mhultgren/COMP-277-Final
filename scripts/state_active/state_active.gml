// use obj_boundary on room to set invisible walls
if keyboard_check(ord("W")) {
	direction = 90;
	sprite_index=spr_player_up;
	if !place_meeting(x, y - player_speed, obj_tangible) {
		y -= player_speed;
	}
}
if keyboard_check_released(ord("W")){
	sprite_index=spr_player_up_idle;
}


if keyboard_check(ord("A")) {
	direction = 180;
	sprite_index=spr_player_left;
	if !place_meeting(x - player_speed, y, obj_tangible) {
		x -= player_speed;
	}
}
if keyboard_check_released(ord("A")){
	sprite_index=spr_player_left_idle;
}

if keyboard_check(ord("S")) {
	direction = 270;
	sprite_index=spr_player_down;
	if !place_meeting(x, y + player_speed, obj_tangible) {
		y += player_speed;
	}
}
if keyboard_check_released(ord("S")){
	sprite_index=spr_player_down_idle;
}

if keyboard_check(ord("D")) {
	direction = 0;
	sprite_index=spr_player_right;
	if !place_meeting(x + player_speed, y, obj_tangible) {
		x += player_speed;
	}
}
if keyboard_check_released(ord("D")){
	sprite_index=spr_player_right_idle;
}


//image_index = CARDINAL_DIR;

if (keyboard_check_pressed(ord("E"))) {
	activate = instance_place(x+lengthdir_x(30, direction), y+lengthdir_y(30, direction), obj_entity);
	
	if (activate != noone && activate.entity_activate_script != -1) {
		scr_execute_array(activate.entity_activate_script, activate.entity_activate_args);
		
		// add change to image index as well once sprites are fleshed out to face four directions
		if (activate.entity_npc) {
			with (activate) {
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}