with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.stranger_cutscene = true;
	global.cutscene = true;
	global.begin_dialogue = true;
	obj_player.sprite_index=spr_player_down_idle;
	
	instance_create_layer(95, 600, "Entities", obj_stranger);
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

with instance_nearest(x, y, obj_stranger) {
	image_index = 1;
		
	if (global.begin_dialogue) {
		scr_new_text_box("STRANGER", "You.", 6);
		scr_new_text_box("STRANGER", "You've been sticking your nose where it doesn't\nbelong. That comes with consequences.", 6);
		scr_new_text_box("STRANGER", "Prepare to die.", 6);
			
		global.begin_dialogue = false;
	}
}

if (!global.textOnScreen && !global.begin_dialogue) {
	global.cutscene = false;
	
	room_goto(rm_battle); 
	global.battle_enemy = spr_stranger_fight;
	with instance_nearest(x, y, obj_player) {
		global.pastX = x;
		global.pastY = y;
	}
	global.battle_room = room;
	global.fought_stranger = true;
	global.current_enemy_health = 150;
	global.enemy_health = 150;
	global.enemy_attack_power = 15;
	global.enemy_hit_chance = 6;
		
	global.attacking_strings = ["You shouldn't have come here.", "Die!"];
}