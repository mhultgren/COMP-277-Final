/// @description Insert description here
// You can write your code in this editor
if(global.button1 = true and (obj_drag.sprite_index = spr_puzzleTempUp or obj_drag.sprite_index = spr_puzzleTempLeft or obj_drag.sprite_index = spr_puzzleTempDown or obj_drag.sprite_index = spr_puzzleTempRight)){
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


} else if(global.button1 = true and (obj_drag.sprite_index = spr_puzzleTempUpMirror or obj_drag.sprite_index = spr_puzzleTempDownMirror or obj_drag.sprite_index = spr_puzzleTempLeftMirror or obj_drag.sprite_index = spr_puzzleTempRightMirror)){
if(keyboard_check(ord("W"))){
	obj_drag.sprite_index = spr_puzzleTempUpMirror;
}
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempLeftMirror;
}
if(keyboard_check(ord("S"))){
	obj_drag.sprite_index = spr_puzzleTempDownMirror;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempRightMirror;
}
}