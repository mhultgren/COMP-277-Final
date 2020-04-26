with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	global.begin_dialogue = true;
	global.walk_to_mayor = true;
	
	with instance_create_layer(110, 80, "Entities", obj_ezekiel) {
			entity_npc = true;
	}

	with instance_nearest(x, y, obj_mayor) {
		instance_destroy();
	}

	with instance_create_layer(158, 16, "Entities", obj_mayor) {
			entity_npc = true;
	}
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;
}

with instance_nearest(x, y, obj_player) {
	if (x <= 158 && y <= 76) {
		global.walk_to_mayor = false;
	
		if (global.begin_dialogue) {
			scr_new_text_box("Welcome to 'PLACEHOLDER TOWN NAME.' My name's mayor,\nthe mayor of this here town.");
			scr_new_text_box("You're that supernatural detective Ezekiel's been talking about?", 0, ["0:That's me."]);
			scr_new_text_box("Well it's a pleasure, though I don't believe you'll be all that useful\nif you ask me.");
			scr_new_text_box("What we've had are just a few regular disappearances, nothing more.");
			scr_new_text_box("I'd have to respectfully disagree there, mayor.", 2);
			scr_new_text_box("Three people in four days? There's gotta be \nsomething otherworldly involved!", 2);
			scr_new_text_box("You ask me, it's a ghoul! Read about em \nonline the other day, you know they can \nkill you dead with nothing but a glare?!", 2);
			scr_new_text_box("Ezekiel's a little superstitious, if you haven't noticed.");
			scr_new_text_box("I'd describe it as a burning desire for the truth.", 2);
			scr_new_text_box("Anyways..");
			scr_new_text_box("Let's get on with the report:");
			scr_new_text_box("So far we've had three disappearances.");
			scr_new_text_box("A cashier at the local Walmart was the first, \nhe disappeared last Friday.");
			scr_new_text_box("Next was a elderly man, Horace. He lived with \nhis wife nearby.");
			scr_new_text_box("And after that was our most recent, a tourist \nstaying at the inn.");
			scr_new_text_box("So far we have no evidence of foul play, but \nclearly something is awry.");
			scr_new_text_box("You'll want to catch up with Horace's wife, \nif anyone has the best idea of what happened,\nit's her.");
			scr_new_text_box("We'll talk more about it in the morning though,\nI'm sure you're tired.");
			scr_new_text_box("You can head to the motel nearby, we've got a room \nfor you there.");
		
			global.begin_dialogue = false;
		}
	}
	
	if (global.walk_to_mayor) {
		if (x != 158) x -= player_speed;
		if (y != 76) y -= player_speed;
	}
}

if (!global.begin_dialogue && !global.textOnScreen) {
	global.cutscene = false;
	instance_destroy();
}