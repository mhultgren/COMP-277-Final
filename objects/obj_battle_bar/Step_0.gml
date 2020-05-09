with instance_nearest(x, y, obj_battle_enemy) {
	other.appearing = appearing;
	other.hit = hit;
	other.miss = miss;
	other.attacking = attacking;
}

if (!appearing && !hit && !miss && !attacking && !instance_exists(obj_attack_bar) && !instance_exists(obj_hit_bar)) {
	if (keyboard_check_pressed(vk_enter)) {
		switch(option_highlighted) {
			// if they click the fight button
			case 0:
				instance_create_layer(32, 384, "UI", obj_attack_bar);	
				break;
		}
	}
}