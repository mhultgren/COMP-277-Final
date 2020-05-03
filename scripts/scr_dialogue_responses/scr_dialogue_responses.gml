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
	case 13: scr_new_text_box("BARTENDER", "Sounds like you've got a shit job.");
	case 14: 
		scr_new_text_box("KAREN", "You weren't hurt were you? If so, \njust know I wont be held responsible.", 3);
		scr_new_text_box("KAREN", "Your room is through the door on the far right. Rest up!", 3);
		break;
	case 15:
		scr_new_text_box("KAREN", "Good to hear!", 3);
		scr_new_text_box("KAREN", "Your room is through the door on the far right. Rest up!", 3);
		break;
	case 16:
		scr_new_text_box("KAREN", "Good to hear. They should be expecting you at Horace's \nhouse to do some investigating.", 3);
		scr_new_text_box("KAREN", "Well, what are you waiting for? Hop to it!", 3);
		scr_new_text_box("KAREN", "Oh, and before I forget, my good-for-nothing \nBellboy's gone missing again. If you see him, give \nhim another good trouncing for me.", 3);
		break;
	case 17:
		scr_new_text_box("KAREN", "Too bad, you're here now, and the next train isn't til \nSunday, so you might as well get to work.", 3);
		scr_new_text_box("KAREN", "They should be expecting you at Horace's \nhouse to do some investigating.", 3);
		scr_new_text_box("KAREN", "Now stop your grumbling and get to work!", 3);
		scr_new_text_box("KAREN", "Oh, and before I forget, my good-for-nothing \nBellboy's gone missing again. If you see him, give \nhim another good trouncing for me.", 3);
		break;
	case 18:
		global.betty_dialogue = true;
		scr_new_text_box("BETTY", "Good to hear, I hope you'll be helpful finding \nmy Horace.");
		scr_new_text_box("CONSTABLE", "You don't need em, after all I'm here.");
		scr_new_text_box("CONSTABLE", "I'm ____, the local constable here in Coolsville.\nDon't you worry about this case, I'm on the job.");
		scr_new_text_box("BETTY", "Yes, well anyways I'm sure you have questions about \nmy husband's disappearance?", 0, ["19:I do, yes.", "20:I'd rather not have to take in any more exposition."]);
		break;
	case 19:
		scr_new_text_box("BETTY", "Sadly, I didn't see or hear a thing on the night Horace\n disappeared. We sleep in separate rooms you see,\nso it wasn't until the morning that I saw he was gone.");
		scr_new_text_box("BETTY", "Oh if only I had checked on him before I went to sleep,\n things may have been different!");
		scr_new_text_box("BETTY", "I left his room how it was the morning of the disappearance,\nplease take a look for any clues he may have left behind.");
		scr_new_text_box("BETTY", "It's through the door on the right.");
		scr_new_text_box("CONSTABLE", "Look as hard as you want detective,\n but trust me there's nothing in that room worth finding,\nor I would have already got to it.");
		scr_betty_dialogue();
		break;
	case 20:
		scr_new_text_box("BETTY", "I guess you're in luck then..");
		scr_new_text_box("BETTY", "Sadly, I didn't see or hear a thing on the night Horace\n disappeared. We sleep in separate rooms you see,\nso it wasn't until the morning that I saw he was gone.");
		scr_new_text_box("BETTY", "Oh if only I had checked on him before I went to sleep,\n things may have been different!");
		scr_new_text_box("BETTY", "I left his room how it was the morning of the disappearance,\nplease take a look for any clues he may have left behind.");
		scr_new_text_box("BETTY", "It's through the door on the right.");
		scr_new_text_box("CONSTABLE", "Look as hard as you want detective,\n but trust me there's nothing in that room worth finding,\nor I would have already got to it.");
		scr_betty_dialogue();
		break;
	default: break;
}