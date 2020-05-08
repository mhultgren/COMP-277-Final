global.horace_room_investigated = true;
global.betty_dialogue = false;

scr_add_evidence(1, "Found crumpled flowers on Horace's bedroom floor.");
add_new_item(2);

scr_new_text_box(string_upper(global.first_name), "A pile of crushed up flowers on the floor.", 5);
scr_new_text_box(string_upper(global.first_name), "A little out of place in such a clean room.", 5);
scr_new_text_box(string_upper(global.first_name), "I should ask Betty about these.", 5);