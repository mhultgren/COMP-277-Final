/// @description Insert description here
// You can write your code in this editor

// item_array entry Index Key 
// (can't access these indexes directly, need to assign curr_slot=item_array[x], then use curr_slot[x])
// 0 index in item_array - int
// 1 item id - int
// 2 name - string
// 3 description - string
// 4 grid upper left x coordinate - int
// 5 grid upper left y coordinate - int
// 6 top bound - bool
// 7 bottom bound - bool
// 8 left bound - bool
// 9 right bound - bool
// 10 item type - int (other menus are 100-101)

if (curr_slot[0]<20){
	if keyboard_check_pressed(ord("W")) {
		if (curr_slot[6]==false) {
			curr_slot=global.item_array[curr_slot[0]-4];
			x = curr_slot[4];
			y = curr_slot[5];
		}
	}

	if keyboard_check_pressed(ord("A")) {
		if (curr_slot[8]==false) {
			curr_slot=global.item_array[curr_slot[0]-1];
			x = curr_slot[4];
			y = curr_slot[5];
		}
	
	}

	if keyboard_check_pressed(ord("S")) {
		if (curr_slot[7]==false) {
			curr_slot=global.item_array[curr_slot[0]+4];
			x = curr_slot[4];
			y = curr_slot[5];
		}
	}

	if keyboard_check_pressed(ord("D")) {
		if (curr_slot[9]==false) {
			curr_slot=global.item_array[curr_slot[0]+1];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		else if (curr_slot[9]==true){
			if (curr_slot[0]<12){
				curr_slot=global.item_array[20];
				sprite_index=spr_menu_select;
				x=curr_slot[4];
				y=curr_slot[5];
			}
			else if (curr_slot[0]=15){
				curr_slot=global.item_array[21];
				sprite_index=spr_menu_select;
				x=curr_slot[4];
				y=curr_slot[5];
			}
			else if (curr_slot[0]=19){
				curr_slot=global.item_array[22];
				sprite_index=spr_menu_select;
				x=curr_slot[4];
				y=curr_slot[5];
			}
		}
	}
}
else{
	if (curr_slot[0]==20){
		if keyboard_check_pressed(ord("W")) {
			curr_slot=global.item_array[22];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("S")) {
			curr_slot=global.item_array[21];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("A")) {
			curr_slot=global.item_array[11];
			sprite_index=spr_item_select;
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(vk_enter) {
			room_goto(evidence_menu);
		}
	}
	else if (curr_slot[0]==21){
		if keyboard_check_pressed(ord("W")) {
			curr_slot=global.item_array[20];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("S")) {
			curr_slot=global.item_array[22];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("A")) {
			curr_slot=global.item_array[15];
			sprite_index=spr_item_select;
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(vk_enter) {
			room_goto(options_menu);
		}
		
	}
	else if (curr_slot[0]==22){
		
		if keyboard_check_pressed(ord("W")) {
			curr_slot=global.item_array[21];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("S")) {
			curr_slot=global.item_array[20];
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(ord("A")) {
			curr_slot=global.item_array[19];
			sprite_index=spr_item_select;
			x = curr_slot[4];
			y = curr_slot[5];
		}
		if keyboard_check_pressed(vk_enter) {
			room_goto(end_menu);
		}
	}
}