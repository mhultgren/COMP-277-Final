global.first_defeat = true;
global.werewolf_defeated = false;
global.current_player_health = 100;
room_goto(global.battle_room);
with instance_nearest(x, y, obj_game) battleEnded = true;