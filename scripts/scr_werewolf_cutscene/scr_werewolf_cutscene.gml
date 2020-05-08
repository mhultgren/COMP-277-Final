global.werewolf_fought = true;

with instance_create_layer(160, 32, "Entities", obj_ezekiel) image_index = 3;
with instance_create_layer(160, 125, "Entities", obj_werewolf) image_index = 3;

with instance_nearest(x, y, obj_player) {
	sprite_index = spr_player_up_idle;
}
scr_new_text_box("EZEKIEL", string(global.first_name) + "!\nYou're here!", 2);
scr_new_text_box("EZEKIEL", "What did I say? I knew there was something weird going on.\nGotta say, being right doesn't feel as good as I expected.", 2);
scr_new_text_box(string_upper(global.first_name), "What IS that thing?!", 5);
scr_new_text_box("WEREWOLF", "SILENCE, HUMAN!", 6);
scr_new_text_box("WEREWOLF", "YOU'RE TOO LATE, DETECTIVE.", 6);
scr_new_text_box("WEREWOLF", "I GROW MORE POWERFUL BY THE NIGHT, NOW YOU CANNOT\nHOPE TO DEFEAT ME!", 6);
scr_new_text_box("WEREWOLF", "AND TO THINK THE TRUTH WAS SO CLOSE ALL ALONG..", 6);
scr_new_text_box("WEREWOLF", "IT WAS I, KAREN, ALL ALONG!!", 6);
scr_new_text_box("WEREWOLF", "AND I HAD MY PICK OF UNSUSPECTING TOURISTS UNTIL\nYOU CAME ALONG, CAUSING TROUBLE. THIS IS YOUR FAULT.", 6);
scr_new_text_box("WEREWOLF", "NOW YOU MUST FACE THE CONSEQUENCES.", 6, ["43:(FIGHT)"])