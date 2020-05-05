hspd = (keyboard_check(vk_right) - keyboard_check(vk_left)) * player_speed;
vspd = (keyboard_check(vk_down) - keyboard_check(vk_up)) * player_speed;


script23();
//if (!global.textOnScreen && !global.gamePaused && !global.cutscene) script_execute(states_array[state]);
if (!global.textOnScreen && !global.gamePaused && !global.cutscene) script_execute(script22(hspd, vspd));

if keyboard_check(ord("W")) {
	direction = 90;
	sprite_index=spr_player_up;
}
if keyboard_check_released(ord("W")){
	sprite_index=spr_player_up_idle;
}


if keyboard_check(ord("A")) {
	direction = 180;
	sprite_index=spr_player_left;
}
if keyboard_check_released(ord("A")){
	sprite_index=spr_player_left_idle;
}

if keyboard_check(ord("S")) {
	direction = 270;
	sprite_index=spr_player_down;
}
if keyboard_check_released(ord("S")){
	sprite_index=spr_player_down_idle;
}

if keyboard_check(ord("D")) {
	direction = 0;
	sprite_index=spr_player_right;
}
if keyboard_check_released(ord("D")){
	sprite_index=spr_player_right_idle;
}




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