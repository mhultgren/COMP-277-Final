with instance_nearest(x, y, obj_motel_owner) instance_destroy();

with instance_create_layer(43, 37, "Entities", obj_motel_owner) {
		entity_activate_script = scr_new_text_box;
		entity_activate_args = ["KAREN", "You got the keys! I take it you had a \nchat with the bellboy?", 3, ["14:I beat him up", "15:Pretty much."]];
		entity_npc = true;
}

with instance_nearest(271, 22, obj_door) {
	locked = false;
}