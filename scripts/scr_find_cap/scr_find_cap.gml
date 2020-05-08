if (global.bed_clue_found) global.bellboy_room_investigated = true;

global.cap_clue_found = true;

add_new_item(3);
scr_add_evidence(2, "The bellboy's cap was covered in blood.");

scr_new_text_box(string_upper(global.first_name), "This looks like the bellboy's cap.\nCaked in dried blood.", 5);
scr_new_text_box(string_upper(global.first_name), "Uh-oh.", 5);

if (global.bellboy_room_investigated) {
	scr_new_text_box(string_upper(global.first_name), "I think I've found everything pertinent.\nI should check back with Betty and Ezekiel.", 5);
	
	with instance_nearest(0, 0, obj_door) locked = false;
}