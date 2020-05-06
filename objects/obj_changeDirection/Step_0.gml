/// @description Insert description here
// You can write your code in this editor
if(button = false){
if(keyboard_check(ord("W"))){
	obj_drag.sprite_index = spr_puzzleTempUp;
}
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempLeft;
}
if(keyboard_check(ord("S"))){
	obj_drag.sprite_index = spr_puzzleTempDown;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempRight;
}


}
else{
	if(keyboard_check(ord("W"))){
	obj_drag.sprite_index = spr_puzzleTempUp;
}
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleUpRight;
}
if(keyboard_check(ord("S"))){
	obj_drag.sprite_index = spr_puzzleUpBack;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleUpLeft;
}
}