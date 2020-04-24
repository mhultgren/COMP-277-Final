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



item_id=0;
name="Test item";
description="this is a test, with a \ntest image";
item_type=0;
item_obj=obj_item_placeholder;