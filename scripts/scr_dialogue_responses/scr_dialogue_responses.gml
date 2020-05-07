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
		room_goto(rm_battle); 
		global.just_fought = true; 
		global.battle_enemy = spr_bellboy_fight;
		global.current_enemy_health = 100;
		global.enemy_health = 100;
		global.enemy_attack_power = 10;
		global.attacking_strings = ["yu realy suckk, man", "*BELCH*", "yu messed wit the wrong guy, pal"];
		with instance_nearest(x, y, obj_player) {
			global.pastX = x;
			global.pastY = y;
		}
		global.battle_room = room; 
		global.bellboy_fought = true; 
		break;
	case 11: scr_new_text_box("BELLBOY", "yu mus think im stupid huh? i won jus \ngive yu your room key without my boss' permission", 4, ["12:Then come to the motel and you can talk to her.", "10:I'm done with this (Fight)"]); break;
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
		scr_new_text_box("KAREN", "It's just east of here, the small house with the \nnice garden.", 3);
		scr_new_text_box("KAREN", "Well, what are you waiting for? Hop to it!", 3);
		scr_new_text_box("KAREN", "Oh, and before I forget, my good-for-nothing \nBellboy's gone missing again. If you see him, give \nhim another good trouncing for me.", 3);
		break;
	case 17:
		scr_new_text_box("KAREN", "Too bad, you're here now, and the next train isn't til \nSunday, so you might as well get to work.", 3);
		scr_new_text_box("KAREN", "They should be expecting you at Horace's \nhouse to do some investigating.", 3);
		scr_new_text_box("KAREN", "It's just east of here, the small house with the \nnice garden.", 3);
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
	case 21:
		scr_new_text_box("BETTY", "Really now?! Let's hear it, what did you find?");
		scr_new_text_box(string_upper(global.first_name), "It might be nothing... but--", 5);
		scr_new_text_box("CONSTABLE", "You're goddamn right it's nothing!\nTold you the room was empty!");
		scr_new_text_box(string_upper(global.first_name), "Anyways..", 5);
		scr_new_text_box(string_upper(global.first_name), "I noticed some crumpled flowers on his floor, would Horace\n have left these on the floor?", 5);
		scr_new_text_box("BETTY", "Oh heavens no! Horace loved his gardening, but if that \nman was anything, it was clean.");
		scr_new_text_box("BETTY", "He never would have left such a mess..");
		scr_new_text_box(string_upper(global.first_name), "Interesting..", 5);
		scr_new_text_box(string_upper(global.first_name), "I'll ask around, see if I can find anymore clues.", 5);
		scr_new_text_box("CONSTABLE", "I personally wouldn't classify a few flowers as a clue, \nbut to each their own...");
		
		with instance_nearest(x, y, obj_betty) instance_destroy();
		with instance_nearest(x, y, obj_constable) instance_destroy();
		
		with instance_create_layer(268, 151, "Entities", obj_constable) {
			image_index = 3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["CONSTABLE", "Beginner's luck."];
			entity_npc = true;
		}
		
		with instance_create_layer(201, 157, "Entities", obj_betty) {
			image_index=3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BETTY", "Good luck in your search!"];
			entity_npc = true;
		}
		
		with instance_nearest(141, 222, obj_door) {
			locked = false;
		}
		
		break;
	case 22:
		scr_new_text_box("KAREN", "Yes, I fear he's up and vanished.", 3);
		scr_new_text_box("EZEKIEL", "Another one gone! Only a matter of time til' we're all kaput!", 2);
		scr_new_text_box("KAREN", "This is no time for panic Ezekiel, let's\nlet Mr. " + string(global.last_name) + " do what he does best.", 3);
		scr_new_text_box("KAREN", "The bellboy's room is through the door \non the left.", 3);
		
		with instance_nearest(145, 16, obj_door) {
			locked = false;
		}
		
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "The bellboy's room is through the door \non the left.", 3];
			entity_npc = true;
		}
		
		break;
	case 23:
		scr_new_text_box("KAREN", "Really now? Let's hear it. What did you find?", 3);
		scr_new_text_box(string_upper(global.first_name), "Two things stood out to me.", 5);
		scr_new_text_box(string_upper(global.first_name), "Firstly, there were slash marks in the bellboy's bed.\nI also found the bellboy's cap behind the boiler in his room.", 5);
		scr_new_text_box("KAREN", "The bellboy is known to be a rough sleeper..", 3);
		scr_new_text_box("KAREN", "Are you sure he didn't just lose his cap?\nYou may have noticed he isn't the most lucid.", 3);
		scr_new_text_box(string_upper(global.first_name), "I might agree with you, but there's dried\nblood all over the cap.", 5);
		scr_new_text_box(string_upper(global.first_name), "With the bloody cap and the torn sheets,\nthis whole thing is starting to seem like more\nthan just a few disappearances.", 5);
		scr_new_text_box("KAREN", "Really now? What do you think it could be?", 3, ["24:Murder", "25:Alien abductions", "25:A string of spontaneous combustions."]);
		break;
	case 24:
		scr_new_text_box("KAREN", "You might be right, detective..\nLet's hope you're not.", 3);
		scr_new_text_box("KAREN", "Oh, before I forget, Ezekiel went to his home.\nHe'd like you to meet him there.", 3);
		scr_new_text_box("KAREN", "Keep up the good work, detective.", 3, ["0:Always.", "0:I'll try."]);
		global.karen_debrief = true;
		with instance_nearest(143, 222, obj_door) locked = false;
		break;
	case 25:
		scr_new_text_box("KAREN", "Uh-huh..", 3);
		scr_new_text_box("KAREN", "How about we wait for more clues\nbefore jumping to conclusions?", 3);
		scr_new_text_box("KAREN", "Oh, before I forget, Ezekiel went to his home.\nHe'd like you to meet him there.", 3);
		scr_new_text_box("KAREN", "Keep up the good work, detective.", 3, ["0:Always.", "0:I'll try."]);
		global.karen_debrief = true;
		with instance_nearest(143, 222, obj_door) locked = false;
		break;
	case 26:
		scr_new_text_box("EZEKIEL", "I just wanted to talk with you without\nanyone else here to butt in.", 2);
		scr_new_text_box("EZEKIEL", "I know\nthe others aren't taking it too seriously,\nbut I swear something weird is going on.", 2);
		scr_new_text_box("EZEKIEL", "How do you feel about the case?", 2, ["30:I agree, something is extra off here.", "31:Let's wait until we have more info."]);
		break;
	case 27:
		scr_new_text_box("EZEKIEL", "...", 2);
		scr_new_text_box("EZEKIEL", "Good question.", 2);
		break;
	case 28:
		scr_new_text_box("KAREN", "Well aren't you tough?", 3);
		scr_new_text_box("KAREN", "You come up with anymore leads talking to Ezekiel?", 3);
		scr_new_text_box(string_upper(global.first_name), "Nothing specific, but I was attacked on my way here.", 5);
		scr_new_text_box("KAREN", "You don't say?! By who?!", 3);
		scr_new_text_box(string_upper(global.first_name), "They got away before I could question them.", 5);
		scr_new_text_box("KAREN", "I can't say that sits right with me..\nYou stay safe out there, OK?", 3, ["0:OK", "0:I'll do my best."]);
		scr_new_text_box("KAREN", "Anyways, your room's all fresh and clean\nso go and make yourself comfortable.", 3);
		scr_new_text_box("KAREN", "Oh, and don't worry about tonight's pay on\naccount of your help.", 3);
		
		with instance_nearest(272, 16, obj_door) {
			locked = false;
		}
		with instance_nearest(143, 222, obj_door) {
			locked = true;
			lockedText = "It's time for bed.";
		}
		
		with instance_nearest(0, 0, obj_door) {
			locked = true;
			lockedText = "It's time for bed.";
		}
		
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Your room's all fresh and clean\nso go and make yourself comfortable."];
			entity_npc = true;
		}
		
		break;
	case 29:
		scr_new_text_box("KAREN", "I swear the days just keep getting longer.", 3);
		scr_new_text_box("KAREN", "You come up with anymore leads talking to Ezekiel?", 3);
		scr_new_text_box(string_upper(global.first_name), "Nothing specific, but I was attacked on my way here.", 5);
		scr_new_text_box("KAREN", "You don't say?! By who?!", 3);
		scr_new_text_box(string_upper(global.first_name), "They got away before I could question them.", 5);
		scr_new_text_box("KAREN", "I can't say that sits right with me..\nYou stay safe out there, OK?", 3, ["0:OK", "0:I'll do my best."]);
		scr_new_text_box("KAREN", "Anyways, your room's all fresh and clean\nso go and make yourself comfortable.", 3);
		scr_new_text_box("KAREN", "Oh, and don't worry about tonight's pay on\naccount of your help.", 3);
		
		with instance_nearest(272, 16, obj_door) {
			locked = false;
		}
		with instance_nearest(143, 222, obj_door) {
			locked = true;
			lockedText = "It's time for bed.";
		}
		
		with instance_nearest(0, 0, obj_door) {
			locked = true;
			lockedText = "It's time for bed.";
		}
		
		with instance_nearest(x, y, obj_motel_owner) {
			instance_destroy();
		}

		with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["KAREN", "Your room's all fresh and clean\nso go and make yourself comfortable.", 3];
			entity_npc = true;
		}
		break;
	case 30:
		scr_new_text_box("EZEKIEL", "I'm so glad you agree with me! It's hard when\nwhen everyone treats you like a crazy person.", 2);
		scr_new_text_box("EZEKIEL", "But four people disappearing, there has to\nbe a supernatural explanation!", 2);
		scr_new_text_box("EZEKIEL", "Well, with you on my side, we've got to reach\nthe truth!", 2);
		scr_new_text_box("EZEKIEL", "Thanks again for coming here, " + string(global.last_name) + ".", 2);
		scr_new_text_box("EZEKIEL", "We sure do need you.", 2);
		scr_new_text_box("EZEKIEL", "Anyways, it's getting late.", 2);
		scr_new_text_box("EZEKIEL", "Why don't we call it a night, and\ndo some more investigating tomorrow?", 2, ["0:Sounds like a plan.", "0:Let's get this bread."]);
		global.night = true;
		global.ezekiel_debrief = true;
		break;
	case 31:
		scr_new_text_box("EZEKIEL", "C'mon now! Four people have disappeared!!\nDon't try to explain this away!", 2);
		scr_new_text_box("EZEKIEL", "THIS. ISN'T. NORMAL.", 2);
		scr_new_text_box("EZEKIEL", "I know I might sound crazy, but you've got\nto trust me here. I've got a feeling!", 2);
		scr_new_text_box("EZEKIEL", "Regardless of how you feel though,\nI appreciate the help, I really do.", 2);
		scr_new_text_box("EZEKIEL", "Thanks again for coming here, " + string(global.last_name) + ".", 2);
		scr_new_text_box("EZEKIEL", "We sure do need you.", 2);
		scr_new_text_box("EZEKIEL", "Anyways, it's getting late.", 2);
		scr_new_text_box("EZEKIEL", "Why don't we call it a night, and\ndo some more investigating tomorrow?", 2, ["0:Sounds like a plan.", "0:Let's get this bread."]);
		global.night = true;
		global.ezekiel_debrief = true;
		break;
	default: break;
}