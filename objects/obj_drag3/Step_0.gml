/// @description Insert description here
// You can write your code in this editor
if(global.grab3 = true){
if(keyboard_check(ord("W"))){
	sprite_index = spr_puzzleTempUp;
}
if(keyboard_check(ord("D"))){
	sprite_index = spr_puzzleTempLeft;
}
if(keyboard_check(ord("S"))){
	sprite_index = spr_puzzleTempDown;
}
if(keyboard_check(ord("A"))){
	sprite_index = spr_puzzleTempRight;
}
}


if(grab == false){
	exit;
}
else{
	x = mouse_x + xx;
	y = mouse_y + yy;
}