global.current_player_health = global.player_health;
global.stranger_cutscene = false;
global.fought_stranger = false;

room_goto(global.battle_room);
with instance_nearest(x, y, obj_game) {
	battleEnded = true;
}