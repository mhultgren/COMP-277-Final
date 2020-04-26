/// @arg Response

// one GIANT switch statement for all possible dialogue responses
// make sure to check here before adding new branching dialogue
// in order to know which number to add
// pretty ugly, but what are you gonna do ¯\_(ツ)_/¯

switch(argument0) {
	case 0: break;
	case 1: scr_new_text_box("PERSON", ":)", 0); break;
	case 2: scr_new_text_box("PERSON", "Well fuck you too!", 1, ["3::)", "0::("]); break;
	case 3: scr_new_text_box("PERSON", ">:(", 1); break;
	case 4: room_persistent = true; room_goto(rm_battle); global.battle_enemy = spr_battle_person_fight; global.battle_room = room; break;
	case 5: scr_new_text_box("EZEKIEL", "Good to hear!", 2); scr_finish_intro(); break;
	case 6: scr_new_text_box("EZEKIEL", "Sorry about that. Can't say our trains are \nknown for their entertainment value.", 2); scr_finish_intro(); break;
	case 7: scr_new_text_box("RYAN", "Tough luck. Maybe when we have an average \nof more than one passenger per week we'll \nchange things.", 1); break;
	case 8: scr_new_text_box("BELLBOY", "you bettr stop, or i'll make you!", 4, ["0:Fine.. (back off)", "10:Let's go then!(Fight)"]); break;
	case 9: scr_new_text_box("BELLBOY", "well you're talkn to the wrong guyy thenn.\nwhatdyou want anywayy?", 4, ["11:I came from the motel. I need my room key."]); break;
	case 10: 
		room_goto(rm_battle); global.just_fought = true; global.battle_enemy = spr_bellboy_fight;
		with instance_nearest(x, y, obj_player) {
			global.pastX = x;
			global.pastY = y;
		}
		global.battle_room = room; global.bellboy_fought = true; break;
	case 11: scr_new_text_box("BELLBOY", "yu mus think im stupid huh? i won jus \ngive yu your room key without my boss' consent", 4, ["12:Then come to the motel and you can talk to her.", "10:I'm done with this (Fight)"]); break;
	case 12: scr_new_text_box("BELLBOY", "i thinq ill stay here", 4, ["0:Fine.. (back off)", "10:Guess I'll just have to change your mind, then (Fight)"]); break;
	default: break;
}