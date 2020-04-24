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
// 11 item object (for the sprite) - obj

curr_slot=global.item_array[0];

x=curr_slot[4];
y=curr_slot[5];

//drawn=false;

while (curr_slot[1]!=0){
	instance_create_layer(curr_slot[4],curr_slot[5],"items",curr_slot[11]);
	curr_slot=global.item_array[curr_slot[0]+1];
}
//drawn=true;

curr_slot=global.item_array[0];