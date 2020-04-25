with instance_nearest(x, y, obj_battle_enemy) {
	other.appearing = appearing;
	other.hit = hit;
	other.miss = miss;
	other.attacking = attacking;
}

if (!appearing && !hit && !miss && !attacking && !instance_exists(obj_attack_bar)) {
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
				instance_create_layer(32, 384, "UI", obj_attack_bar);	
				break;
		}
	}
}