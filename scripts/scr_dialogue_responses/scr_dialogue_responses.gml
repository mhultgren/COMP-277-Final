/// @arg Response

// one GIANT switch statement for all possible dialogue responses
// make sure to check here before adding new branching dialogue
// in order to know which number to add
// pretty ugly, but what are you gonna do ¯\_(ツ)_/¯

switch(argument0) {
	case 0: break;
	case 1: scr_new_text_box(":)", 0); break;
	case 2: scr_new_text_box("Well fuck you too!", 1, ["3::)", "0::("]); break;
	case 3: scr_new_text_box(">:(", 1); break;
	case 4: room_persistent = true; room_goto(rm_battle); global.battle_enemy = spr_battle_person_fight; global.battle_room = room; break;
	case 5: scr_new_text_box("Good to hear!", 2); scr_finish_intro(); break;
	case 6: scr_new_text_box("Sorry about that. Can't say our trains are \nknown for being amenable.", 2); scr_finish_intro(); break;
	case 7: scr_new_text_box("Tough luck. Maybe when we have an average \nof more than one passenger per week we'll \nchange things.", 1); break;
	default: break;
}