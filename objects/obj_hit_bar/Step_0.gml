if (keyboard_check_pressed(vk_enter)) {
	with instance_nearest(x, y, obj_hit_selector) {
		var bar_position = x - init_x+5;
		// strongest attack
		if (bar_position >= 96 && bar_position <= 143) other.zone = 2;
		
		// strong attack
		else if (bar_position >= 72 && bar_position <= 95) other.zone = 1.5;
		else if (bar_position >= 144 && bar_position <= 167) other.zone = 1.5;
		
		// normal attack
		else if (bar_position >= 48 && bar_position <= 71) other.zone = 1;
		else if (bar_position >= 168 && bar_position <= 191) other.zone = 1;
		
		else if (bar_position >= 24 && bar_position <= 47) other.zone = .75;
		else if (bar_position >= 192 && bar_position <= 215) other.zone = .75;
		
		else other.zone = .5;
		instance_destroy();
	}
	
	with instance_nearest(x, y, obj_battle_enemy) {
		hit = true;
		zone = other.zone;
	}
	
	instance_destroy();
}