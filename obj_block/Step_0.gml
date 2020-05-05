/// @description Insert description here
// You can write your code in this editor

scr_practice(obj_player);
scr_practice(obj_block);

horizontal_movement = 0;
vertical_movement = 0;

var collision = noone;
switch(string_lower(collision_type)){
	case "circle" :
	collision = collision_circle(x, y, interaction_radius, obj_player, false, true);
	break;
	collision = collision_rectangle(x - interaction_radius, y - interaction_radius, x + interaction_radius, y + interaction_radius, obj_player, false, true)
}

if(collision == noone){
	horizontal_movement = 0;
	vertical_movement = 0;
}