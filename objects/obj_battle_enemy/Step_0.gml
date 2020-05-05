// set global variable when sparking battle
// ex: case 4 in scr_dialogue_responses
sprite_index = global.battle_enemy;

if (appearing) {
	image_xscale = clamp(image_xscale + .01, 0, image_maxscale);
	image_yscale = clamp(image_xscale + .01, 0, image_maxscale);
	
	if (image_xscale == image_maxscale || image_yscale == image_maxscale) appearing = false;
} else {
	current_enemy_health = clamp(current_enemy_health, 0, enemy_health);

	if (current_enemy_health == 0) {
		room_goto(global.battle_room);
		with instance_nearest(x, y, obj_game) {
			battleEnded = true;
		}
	}

	if (decreasing) {
		image_xscale = clamp(image_xscale - .003, image_minscale, image_maxscale);
		image_yscale = clamp(image_yscale - .003, image_minscale, image_maxscale);
	
		if (image_xscale == image_minscale || image_yscale == image_minscale) decreasing = false;
	
	} else {
		image_xscale = clamp(image_xscale + .003, image_minscale, image_maxscale);
		image_yscale = clamp(image_yscale + .003, image_minscale, image_maxscale);
	
		if (image_xscale == image_maxscale || image_yscale == image_maxscale) decreasing = true;
	}
}

if (hit) {
	// lower enemy health by player attack power
	// same with player health
	current_enemy_health -= (global.player_attack_power * zone) / (1.5*room_speed);
	
	hit_counter++;
	if (hit_counter % 15 == 0) {
		damaged = !damaged;
	}
	
	if (hit_counter >= 1.5 * room_speed) {
		damaged = false;
		hit_counter = 0;
		
		var enemy_hit = irandom(9) + 1;
		if (enemy_hit <= enemy_hit_chance) {
			phrase_picked = false;
			attacking = true;
		}
		hit = false;
	}
}

if (miss) {
	miss_counter++;
	
	if (miss_counter >= room_speed) {
		var enemy_hit = irandom(9) + 1;
		if (enemy_hit <= enemy_hit_chance) {
			phrase_picked = false;
			attacking = true;
		}
	
		miss_counter = 0;
		miss = false;
	}
}

if (attacking) {
	global.current_player_health -= attack_power/(1.5 * room_speed);
	attacking_counter++;
	
	if (attacking_counter >= room_speed * 1.5) {
		attacking_counter = 0;
		attacking = false;
	}
	
}