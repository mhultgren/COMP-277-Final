if(place_meeting(x, y, obj_puzzleTemp2) and obj_puzzleTemp2.sprite_index = spr_puzzleTempLeftMirror){
	keyHole = true;
	sprite_index = spr_puzzleKeyHoleCorrect;
	global.leave = true;
	obj_exitKeyHole.sprite_index = spr_exitKeyHole;
}