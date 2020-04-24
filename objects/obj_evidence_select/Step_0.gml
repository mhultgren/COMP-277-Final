/// @description Insert description here
// You can write your code in this editor

with instance_nearest(x, y, obj_evidence_menu) {
	evidence_highlighted = other.curr_slot;
}

if (curr_slot != -1) {
	visible = false;
}

if (curr_slot == -1){
	visible = true;
	if keyboard_check_pressed(vk_enter) {
		room_goto(pause_menu);
	}
}

if (keyboard_check_pressed(ord("W"))) {
	if (curr_slot > -1) {
		if (curr_slot > 7) {
			with instance_nearest(x, y, obj_evidence_menu) {
				min_evidence_index--;
				max_evidence_index--;
			}
		}
		curr_slot--;
	}
	else {
		curr_slot = global.next_fillable_evidence_index-1;
		
		if (global.next_fillable_evidence_index > 7) {
			with instance_nearest(x, y, obj_evidence_menu) {
				min_evidence_index = global.next_fillable_evidence_index-7;
				max_evidence_index = global.next_fillable_evidence_index-1;
			}
		}
	}
}

if (keyboard_check_pressed(ord("S"))) {
	if (curr_slot < global.next_fillable_evidence_index-1) {
		if (curr_slot >= 6) {
			with instance_nearest(x, y, obj_evidence_menu) {
				max_evidence_index = clamp(max_evidence_index + 1, min_evidence_index, global.next_fillable_evidence_index-1);
				min_evidence_index = clamp(min_evidence_index + 1, 0, max_evidence_index - 6);
			}
		}
		curr_slot++;
	}
	else {
		curr_slot = -1;
		
		with instance_nearest(x, y, obj_evidence_menu) {
			min_evidence_index = 0;
			max_evidence_index = 6;
		}
	}
}