if(place_meeting(x, y, obj_puzzleTemp) and obj_puzzleTemp.sprite_index = spr_puzzleUpRight){
	keyHole = true;
	sprite_index = spr_puzzleKeyHoleCorrect;
	global.leave = true;
}