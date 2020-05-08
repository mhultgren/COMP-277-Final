global.werewolf_fought = true;

with instance_create_layer(160, 32, "Entities", obj_ezekiel) image_index = 3;
with instance_create_layer(160, 125, "Entities", obj_werewolf) image_index = 3;

with instance_nearest(x, y, obj_player) {
	sprite_index = spr_player_up_idle;
}

scr_new_text_box("EZEKIEL", string(global.first_name) + "!\nYou're here!", 2);
scr_new_text_box("EZEKIEL", "What did I say? I knew there was something weird going on.\nGotta say, being right doesn't feel as good as I expected.", 2);
scr_new_text_box(string_upper(global.first_name), "What IS that thing?!", 5);
scr_new_text_box("WEREWOLF", "Silence, human!", 6);
scr_new_text_box("WEREWOLF", "You're too late detective.", 6);
scr_new_text_box("WEREWOLF", "I've grown more powerful by the night, now you can not stop me!", 6, ["43:(FIGHT)"]);
// werewolf reveals herself, then fight starts