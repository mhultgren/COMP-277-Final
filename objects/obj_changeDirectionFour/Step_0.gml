/// @description Insert description here
// You can write your code in this editor
if(global.button4 = true and (obj_drag.sprite_index = spr_puzzleTempUp or obj_drag.sprite_index = spr_puzzleTempUpMirror)){
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempUp;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempUpMirror;
}

} else if( global.button4 = true and (obj_drag.sprite_index = spr_puzzleTempDown or obj_drag.sprite_index = spr_puzzleTempDownMirror)){
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempDownMirror;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempDown;
}
	
}
else if( global.button4 = true and (obj_drag.sprite_index = spr_puzzleTempLeft or obj_drag.sprite_index = spr_puzzleTempLeftMirror)){
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempLeftMirror;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempLeft;
}
}
else if( global.button4 = true and (obj_drag.sprite_index = spr_puzzleTempRight or obj_drag.sprite_index = spr_puzzleTempRightMirror)){
if(keyboard_check(ord("D"))){
	obj_drag.sprite_index = spr_puzzleTempRight;
}
if(keyboard_check(ord("A"))){
	obj_drag.sprite_index = spr_puzzleTempRightMirror;

}
}