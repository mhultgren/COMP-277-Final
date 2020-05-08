with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	global.werewolf_defeated = true;
	global.begin_dialogue = true;
	global.gun_thrown = false;
	global.start_fight = false;

	with instance_create_layer(160, 32, "Entities", obj_ezekiel) image_index = 3;
	with instance_create_layer(160, 125, "Entities", obj_werewolf) image_index = 3;

	with instance_nearest(x, y, obj_player) {
		sprite_index = spr_player_up_idle;
	}
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

if (global.begin_dialogue) {
	global.begin_dialogue = false;
	scr_new_text_box("WEREWOLF", "YOU CANNOT WIN!", 6);
	scr_new_text_box("EZEKIEL", string(global.first_name) + "! Catch!", 2);
}

if (!global.textOnScreen && !global.gun_thrown) {
	global.gun_thrown = true;
	with instance_create_layer(160, 32, "Entities", obj_gun) {
		with instance_nearest(0, 0, obj_player) other.targetY = y-16;
	}
}

if (global.gun_thrown && !instance_exists(obj_gun) && !global.start_fight) {
	//add_new_item(5);
	global.start_fight = true;
	scr_new_text_box("EZEKIEL", "I always carry one of those on me!", 2);
	scr_new_text_box("EZEKIEL", "Silver bullets!", 2);
	scr_new_text_box("WEREWOLF", "NOTHING CAN SAVE YOU!!", 6, ["0:(FIGHT)"]);
}

if (!global.textOnScreen && global.start_fight) {
	global.start_fight = false;
	global.cutscene = false;
	room_goto(rm_battle);
	global.enemy_hit_chance = 2;
	global.battle_enemy = spr_battle_person_fight;
	global.current_enemy_health = 300;
	global.enemy_health = 300;
	global.enemy_attack_power = 50;
	global.player_attack_power = 150;
	global.hit_chance = 10;
	global.attacking_strings = ["DIE!!!", "RAWR", "AWOOOOOO"];
	with instance_nearest(x, y, obj_player) {
		global.pastX = x;
		global.pastY = y;
	}
	global.battle_room = room;
}