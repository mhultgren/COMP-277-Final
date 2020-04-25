if (keyboard_check_pressed(vk_enter)) {
	switch (option_highlighted) {
		case 0:
			var player_chance = irandom(9) + 1;
				
			if (player_chance <= global.hit_chance) {
				with instance_nearest(x, y, obj_battle_enemy) {
					hit = true;
				}
			} else with instance_nearest(x, y, obj_battle_enemy) {
				miss = true;
			}
			break;
	}
	
	instance_destroy();
}

if (keyboard_check_pressed(vk_escape)) instance_destroy();