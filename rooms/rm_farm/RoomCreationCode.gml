if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(244, 181, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 3) {
	if (global.talked_to_leroy && !global.night) {
		global.night = true;
		scr_new_text_box(string_upper(global.first_name), "This isn't looking good. I should go\nand talk to Ezekiel before heading to\nthe cave.", 5);
	}
}