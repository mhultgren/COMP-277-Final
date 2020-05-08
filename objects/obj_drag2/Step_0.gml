/// @description Insert description here
// You can write your code in this editor
if(global.grab2 = true){
if(keyboard_check(ord("W"))){
	sprite_index = spr_puzzleTempUpMirror;
}
if(keyboard_check(ord("D"))){
	sprite_index = spr_puzzleTempLeftMirror;
}
if(keyboard_check(ord("S"))){
	sprite_index = spr_puzzleTempDownMirror;
}
if(keyboard_check(ord("A"))){
	sprite_index = spr_puzzleTempRightMirror;
}
}


if(grab == false){
	exit;
}
else{
	x = mouse_x + xx;
	y = mouse_y + yy;
}