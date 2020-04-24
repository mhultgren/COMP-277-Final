if (keyboard_check_pressed(ord("D"))) {
	if (option_highlighted == 1) option_highlighted = 0;
	else option_highlighted++;
}

if (keyboard_check_pressed(ord("A"))) {
	if (option_highlighted == 0) option_highlighted = 1;
	else option_highlighted--;
}

if (keyboard_check_pressed(vk_enter)) {
	switch(option_highlighted) {
		// if they click the fight button
		case 0:
			with instance_nearest(x, y, obj_battle_enemy) {
				// lower enemy health by player attack power
				// same with player health
				current_enemy_health -= global.player_attack_power;
				global.current_player_health -= attack_power;
			}
			break;
	}
}