/// @arg Response

// one GIANT switch statement for all possible dialogue responses
// make sure to check here before adding new branching dialogue
// in order to know which number to add
// pretty ugly, but what are you gonna do ¯\_(ツ)_/¯

switch(argument0) {
	case 0: break;
	case 5: scr_new_text_box("EZEKIEL", "Good to hear!", 2); scr_finish_intro(); break;
	case 6: scr_new_text_box("EZEKIEL", "Sorry about that. Can't say our trains are \nknown for their entertainment value.", 2); scr_finish_intro(); break;
	case 7: scr_new_text_box("RYAN", "Tough luck. Maybe when we have an average \nof more than one passenger per week we'll \nchange things.", 1); break;
	case 8: scr_new_text_box("BELLBOY", "you bettr stop, or i'll make you!", 4, ["0:Fine.. (back off)", "10:Let's go then! (FIGHT)"]); break;
	case 9: scr_new_text_box("BELLBOY", "well you're talkn to the wrong guyy thenn.\nwhatdyou want anywayy?", 4, ["11:I came from the motel. I need my room key."]); break;
	case 10: 
		room_goto(rm_battle); 
		global.enemy_hit_chance = 5;
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
	case 11: scr_new_text_box("BELLBOY", "yu mus think im stupid huh? i won jus \ngive yu your room key without my boss' permission", 4, ["12:Then come to the motel and you can talk to her.", "10:I'm done with this (FIGHT)"]); break;
	case 12: scr_new_text_box("BELLBOY", "i thinq ill stay here", 4, ["0:Fine.. (back off)", "10:Guess I'll just have to change your mind, then (FIGHT)"]); break;
	case 13: scr_new_text_box("BARTENDER", "Sounds like you've got a shit job."); break;
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
		scr_new_text_box("BETTY", "Good to hear, I hope you'll be helpful finding \nmy Horace.", 7);
		scr_new_text_box("CONSTABLE", "You don't need em, after all I'm here.");
		scr_new_text_box("CONSTABLE", "I'm ____, the local constable here in Coolsville.\nDon't you worry about this case, I'm on the job.");
		scr_new_text_box("BETTY", "Yes, well anyways I'm sure you have questions about \nmy husband's disappearance?", 7, ["19:I do, yes.", "20:I'd rather not have to take in any more exposition."]);
		break;
	case 19:
		scr_new_text_box("BETTY", "Sadly, I didn't see or hear a thing on the night Horace\n disappeared. We sleep in separate rooms you see,\nso it wasn't until the morning that I saw he was gone.", 7);
		scr_new_text_box("BETTY", "Oh if only I had checked on him before I went to sleep,\n things may have been different!", 7);
		scr_new_text_box("BETTY", "I left his room how it was the morning of the disappearance,\nplease take a look for any clues he may have left behind.", 7);
		scr_new_text_box("BETTY", "It's through the door on the right.", 7);
		scr_new_text_box("CONSTABLE", "Look as hard as you want detective,\n but trust me there's nothing in that room worth finding,\nor I would have already got to it.");
		scr_betty_dialogue();
		break;
	case 20:
		scr_new_text_box("BETTY", "I guess you're in luck then..", 7);
		scr_new_text_box("BETTY", "Sadly, I didn't see or hear a thing on the night Horace\n disappeared. We sleep in separate rooms you see,\nso it wasn't until the morning that I saw he was gone.", 7);
		scr_new_text_box("BETTY", "Oh if only I had checked on him before I went to sleep,\n things may have been different!", 7);
		scr_new_text_box("BETTY", "I left his room how it was the morning of the disappearance,\nplease take a look for any clues he may have left behind.", 7);
		scr_new_text_box("BETTY", "It's through the door on the right.", 7);
		scr_new_text_box("CONSTABLE", "Look as hard as you want detective,\n but trust me there's nothing in that room worth finding,\nor I would have already got to it.");
		scr_betty_dialogue();
		break;
	case 21:
		scr_new_text_box("BETTY", "Really now?! Let's hear it, what did you find?", 7);
		scr_new_text_box(string_upper(global.first_name), "It might be nothing... but--", 5);
		scr_new_text_box("CONSTABLE", "You're goddamn right it's nothing!\nTold you the room was empty!");
		scr_new_text_box(string_upper(global.first_name), "Anyways..", 5);
		scr_new_text_box(string_upper(global.first_name), "I noticed some crumpled flowers on his floor, would Horace\n have left these on the floor?", 5);
		scr_new_text_box("BETTY", "Oh heavens no! Horace loved his gardening, but if that \nman was anything, it was clean.", 7);
		scr_new_text_box("BETTY", "He never would have left such a mess..", 7);
		scr_new_text_box(string_upper(global.first_name), "Interesting..", 5);
		scr_new_text_box(string_upper(global.first_name), "I'll ask around, see if I can find anymore clues.", 5);
		scr_new_text_box("CONSTABLE", "I personally wouldn't classify a few flowers as a clue, \nbut to each their own...");
		
		with instance_nearest(x, y, obj_betty) instance_destroy();
		with instance_nearest(x, y, obj_constable) instance_destroy();
		
		with instance_create_layer(268, 157, "Entities", obj_constable) {
			image_index = 3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["CONSTABLE", "Beginner's luck."];
			entity_npc = true;
		}
		
		with instance_create_layer(201, 157, "Entities", obj_betty) {
			image_index=3;
			entity_activate_script = scr_new_text_box;
			entity_activate_args = ["BETTY", "Good luck in your search!", 7];
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
		scr_new_text_box("EZEKIEL", "I know the others aren't taking it too seriously,\nbut I swear something weird is going on.", 2);
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
		scr_new_text_box("EZEKIEL", "Thanks again for coming here, " + string(global.first_name) + ".", 2);
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
		scr_new_text_box("EZEKIEL", "Thanks again for coming here, " + string(global.first_name) + ".", 2);
		scr_new_text_box("EZEKIEL", "We sure do need you.", 2);
		scr_new_text_box("EZEKIEL", "Anyways, it's getting late.", 2);
		scr_new_text_box("EZEKIEL", "Why don't we call it a night, and\ndo some more investigating tomorrow?", 2, ["0:Sounds like a plan.", "0:Let's get this bread."]);
		global.night = true;
		global.ezekiel_debrief = true;
		break;
	case 32:
		global.morning_karen_talk = true;
		scr_new_text_box("KAREN", "Good choice.", 3);
		scr_new_text_box("KAREN", "The good news is, this whole murder business \nis behind us. Constable caught the culprit last night!", 3);
		scr_new_text_box("KAREN", "You know the train station attendant, Ryan?\nIt was him all along, the scum.", 3);
		scr_new_text_box("KAREN", "Anyways, bad news is you're out of a job here.", 3);
		scr_new_text_box("KAREN", "Turns out you weren't so useful after all, huh?", 3);
		scr_new_text_box(string_upper(global.first_name), "I'd like to talk to Ryan. Do you know\nwhere I can find him?", 5);
		scr_new_text_box("KAREN", "You want to talk to him? I guess that's fair\nseeing as you should have been the one to catch him.", 3);
		scr_new_text_box("KAREN", "He's behind bars, over at the town jail.", 3);
		scr_new_text_box("KAREN", "Make sure and give him my regards when you see\nthat weasel, I'm going to have to put up job postings\non Craigslist because of him..", 3);
		scr_add_evidence(5, "A suspect has been placed in custody.");
		with instance_nearest(143, 224, obj_door) locked = false;
		break;
	case 33:
		global.morning_karen_talk = true;
		scr_new_text_box("KAREN", "Ok, just don't be sad when you hear it.", 3);
		scr_new_text_box("KAREN", "The bad news is you're out of a job here.", 3);
		scr_new_text_box("KAREN", "Constable caught the culprit just last night,\nturns out you weren't so necessary after all, huh?", 3);
		scr_new_text_box("KAREN", "You know the train station attendant, Ryan?\nIt was him all along, the scum.", 3);
		scr_new_text_box(string_upper(global.first_name), "I'd like to talk to Ryan. Do you know\nwhere I can find him?", 5);
		scr_new_text_box("KAREN", "You want to talk to him? I guess that's fair\nseeing as you should have been the one to catch him.", 3);
		scr_new_text_box("KAREN", "He's behind bars, over at the town jail.", 3);
		scr_new_text_box("KAREN", "Make sure and give him my regards when you see\nthat weasel, I'm going to have to put up job postings\non Craigslist because of him..", 3);
		scr_add_evidence(5, "A suspect has been placed in custody.");
		with instance_nearest(143, 224, obj_door) locked = false;
		break;
	case 34:
		global.talked_to_constable = true;
		scr_new_text_box("CONSTABLE", "Ah, so you did hear! Well that's just great.");
		scr_new_text_box("CONSTABLE", "I'm sure you'll understand, lawman to lawman,\nyou really aren't necessary here.");
		scr_new_text_box("CONSTABLE", "In fact I've decided I won't let you speak to Ryan.");
		scr_new_text_box("CONSTABLE", "I don't see how you meddling around further\nwill help things.");
		scr_new_text_box("CONSTABLE", "No 'clues' to be found here. I've found em all!");
		scr_new_text_box("CONSTABLE", "So how about you just leave? Face it, your\njob's done.", 0, ["35:Not if I can help it.. (FIGHT)", "36:I can't leave until I talk to Ryan."]);
		break;
	case 35:
		room_goto(rm_battle); 
		global.fought_constable = true; 
		global.enemy_hit_chance = 11;
		global.battle_enemy = spr_battle_person_fight;
		global.current_enemy_health = 100;
		global.enemy_health = 100;
		global.enemy_attack_power = 1;
		global.attacking_strings = ["You can't handle my POWER!!", "SUCKER PUNCH!!", "I AM THE LAW!"];
		with instance_nearest(x, y, obj_player) {
			global.pastX = x;
			global.pastY = y;
		}
		global.battle_room = room;
		break;
	case 36:
		scr_new_text_box("CONSTABLE", "Too bad. Ain't gonna happen.");
		scr_new_text_box("CONSTABLE", "You know, I'm sick of you coming in to steal my shine.\nOne day I'm top dog and the next there's some know-it-all\ndetective from out of town who wants to outshine\nme at every turn...");
		scr_new_text_box("CONSTABLE", "I mean, since when have FLOWERS been considered a clue?!");
		scr_new_text_box("CONSTABLE", "You know, I'm done with your attitude.\nYou're gonna regret being such a show-off.", 0, ["35:(FIGHT)"]);
		break;
	case 37:
		global.talk_to_ryan = true;
		
		with instance_nearest(x, y, obj_station_attendant) {
			entity_activate_args = ["RYAN", "Please, go to the forest and find the culprit!", 1];
		}
		
		scr_new_text_box("RYAN", "Look, like I told you already, I didn't do anything!\nI have no idea what's going on, same as you!", 1);
		scr_new_text_box(string_upper(global.first_name), "I'm not with the constable. I want to hear your side\nof what happened.", 5);
		scr_new_text_box("RYAN", "Fine. No harm in telling you, I guess.", 1);
		scr_new_text_box("RYAN", "I was just going home after a long, boring\nday at the station, when I heard something coming from\nthe forest.", 1);
		scr_new_text_box("RYAN", "I went to investigate, but by the time I arrived\nit had stopped.", 1);
		scr_new_text_box("RYAN", "Soon as I get back on the path home, the constable's\nthere waiting.", 1);
		scr_new_text_box("RYAN", "I guess someone else had reported the noise, and\nseeing as I was the only one at the scene I was branded\nas guilty.", 1);
		scr_new_text_box("RYAN", "But come on, what kind of evidence is that?\nYou ask me they're just looking for someone to scapegoat.", 1);
		scr_new_text_box("RYAN", "We get so few tourists as it is, this is\nnothing but bad publicity.", 1);
		scr_new_text_box("RYAN", "You believe me, right?", 1, ["38:Yes", "39:I can't be sure yet."]);
		break;
	case 38:
		scr_new_text_box("RYAN", "Oh thank god! Then you can help!", 1);
		scr_new_text_box("RYAN", "There's something going on in the forest,\nI'm sure you can find something there!", 1);
		scr_new_text_box("RYAN", "That old farmer's got to know something too.\nHe must have been the one to make the call.", 1);
		scr_new_text_box("RYAN", "His house is just up the forest path.", 1);
		scr_new_text_box("RYAN", "Please find whoever did this!", 1);
		scr_add_evidence(6, "There was a strange noise near the farm in the woods.");
		break;
	case 39:
		scr_new_text_box("RYAN", "Well that's inspiring..", 1);
		scr_new_text_box("RYAN", "Look, if you just talk to that old farmer\nin the forest, he must have been the one to make\nthe call. He can exonerate me!", 1);
		scr_new_text_box("RYAN", "His house is just up the forest path.", 1);
		scr_new_text_box("RYAN", "Please find whoever did this!", 1);
		scr_add_evidence(6, "There was a strange noise near the farm in the woods.");
		break;
	case 40:
		global.talked_to_leroy = true;
		with instance_nearest(0, 0, obj_farmer) {
			entity_activate_args = ["LEROY", "Good luck pardner.", 4];
		}
		scr_new_text_box("LEROY", "As a matter of fact I did. Called the constable too.", 4);
		scr_new_text_box(string_upper(global.first_name), "Can you tell me more about this noise?", 5);
		scr_new_text_box("LEROY", "Well I can tell you it sure weren't natural.\nSounded like a wild animal, but DIFFERENT, somehow, ya know?", 4);
		scr_new_text_box("LEROY", "Gave me the heebiejeebies, it did.", 4);
		scr_new_text_box("LEROY", "Went over to check it out this morning, and\nI found this:", 4, ["41:(EXAMINE)"]);
		break;
	case 41:
		with instance_nearest(0, 0, obj_farmer) {
			draw_fur = true;
		}
		scr_new_text_box(string_upper(global.first_name), "What is this? Fur?", 5);
		scr_new_text_box("LEROY", "Sure is, big clumps all over the branches.", 4, ["42:(PUT AWAY)"]);
		break;
	case 42:
		add_new_item(4);
		with instance_nearest(0, 0, obj_farmer) {
			draw_fur = false;
		}
		scr_new_text_box("LEROY", "You ask me, whatever it is went off to the\ncave just east of here.", 4);
		scr_new_text_box("LEROY", "Bet that thing's responsible for me sheep goin missin too..", 4);
		scr_new_text_box("LEROY", "If you go after it, be careful. I don't think\nitd be too friendly.", 4);
		scr_new_text_box(string_upper(global.first_name), "Thanks for the tip, I will.", 5);
		break;
	case 43:
		room_goto(rm_battle);
		global.enemy_hit_chance = 11;
		global.battle_enemy = spr_battle_person_fight;
		global.current_enemy_health = 300;
		global.enemy_health = 300;
		global.enemy_attack_power = 50;
		global.player_attack_power = 5;
		global.attacking_strings = ["DIE!!!", "RAWR", "AWOOOOOO"];
		global.death_script = scr_ww_defeat;
		with instance_nearest(x, y, obj_player) {
			global.pastX = x;
			global.pastY = y;
		}
		global.battle_room = room;
		break;
	default: break;
}