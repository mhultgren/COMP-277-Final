// set global variable when sparking battle
// ex: case 4 in scr_dialogue_responses
sprite_index = global.battle_enemy;

current_enemy_health = clamp(current_enemy_health, 0, enemy_health);

if (current_enemy_health == 0) {
	room_goto(global.battle_room);
	with instance_nearest(x, y, obj_game) {
		battleEnded = true;
	}
}