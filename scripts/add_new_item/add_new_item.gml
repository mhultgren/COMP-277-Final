/// @arg item ID

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

//item types:
// 0: placeholder
// 1: weapon
// 2:

curr_slot=global.item_array[global.next_fillable_item_index];

curr_slot[0]=global.next_fillable_item_index;
curr_slot[1]=argument[0];

//need to put all items associated with IDs here, each one gets its own if statement
//inside each item object's creation code, give it a name, a description, an item type and an item object0
//inside each item object's creation code, give it an id, a name, a description, an item type and an item object

if item_id==0{
	item_object=obj_item_placeholder;
}

curr_slot[2]=item_object.name;
curr_slot[3]=item_object.description;
curr_slot[10]=item_object.item_type;
curr_slot[11]=item_object.item_obj;

global.item_array[global.next_fillable_item_index]=curr_slot;