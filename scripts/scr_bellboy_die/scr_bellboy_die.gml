global.current_player_health = global.player_health;
global.bellboy_fought = false;
global.just_fought = false;
global.bellboy_cutscene = false;

room_goto(global.battle_room);
with instance_nearest(x, y, obj_game) {
	battleEnded = true;
}