surface_resize(application_surface, 640, 480);
if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(380, 320, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

if (global.day_number == 2) {
	if (!global.bellboy_room_investigated) {
		with instance_nearest(0, 0, obj_door) {
			locked = true;
			lockedText = "I should find some clues before I leave.";
		}
		
		with instance_create_layer(183, 70, "Roomobjects", obj_cap) {
			script = scr_find_cap;
		}
		
		with instance_nearest(0, 0, obj_empty_slash_marks) instance_destroy();
		
		with instance_create_layer(33, 76, "Roomobjects", obj_slash_marks) {
			script = scr_find_slash_marks;
		}
	}
}