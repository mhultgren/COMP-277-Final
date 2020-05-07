with instance_nearest(x, y, obj_cutscene) other.cutscene_start = cutscene_start;

if (cutscene_start) {
	global.cutscene = true;
	
	with instance_nearest(x, y, obj_cutscene) cutscene_start = false;

	scr_new_text_box("BELLBOY", "ouch! not cool at all, man..", 4);
	scr_new_text_box("BELLBOY", "i cant blieve im doing this, but here's yur room key\nyu bettr not be lying or im fired", 4);
	scr_new_text_box("BELLBOY", "this is our only key too so keep it close, ok??", 4);
	scr_new_text_box("TIP", "You got the room key! It's in your inventory.", 5);
	add_new_item(1);
	scr_new_text_box("BELLBOY", "IM OUT!", 4);
}

if (!global.textOnScreen) {
	with instance_nearest(x, y, obj_bellboy) {
		if (x == 143 && y == 222) {
			instance_destroy();
		}
		
		if x<=143{y = clamp(y+1, y, 222);}
		x = clamp(x-1, 143, x);
	}
}

if (!instance_exists(obj_bellboy)) {
	global.cutscene = false;
	instance_destroy();
}