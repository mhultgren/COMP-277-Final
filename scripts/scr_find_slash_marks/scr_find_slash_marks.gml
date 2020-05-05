instance_create_layer(33, 76, "Roomobjects", obj_empty_slash_marks);
if (global.cap_clue_found) global.bellboy_room_investigated = true;

global.bed_clue_found = true;

scr_add_evidence(3, "Slash marks in the bellboy's bed.");

scr_new_text_box(string_upper(global.first_name), "What are these, slash marks?", 5);
scr_new_text_box(string_upper(global.first_name), "Unless this bellboy is a mighty rough sleeper, \nthis doesn't bode well.", 5);

if (global.bellboy_room_investigated) {
	scr_new_text_box(string_upper(global.first_name), "I think I've found everything pertinent.\nI should check back with Betty and Ezekiel.", 5);
	
	with instance_nearest(0, 0, obj_door) locked = false;
}