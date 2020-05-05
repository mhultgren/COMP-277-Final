if (keyboard_check_pressed(vk_enter)) {
	switch (option_highlighted) {
		case 0:
			var player_chance = irandom(9) + 1;
			
			if (player_chance <= global.hit_chance) instance_create_layer(x, y-150, "UI", obj_hit_bar);
			else with instance_nearest(x, y, obj_battle_enemy) miss = true;
			break;
	}
	
	instance_destroy();
}

if (keyboard_check_pressed(vk_escape)) instance_destroy();