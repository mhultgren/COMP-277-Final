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
// 1: item needed to progress
// 2:

curr_slot=global.item_array[global.next_fillable_item_index];

curr_slot[0]=global.next_fillable_item_index;
curr_slot[1]=argument[0];

//need to put all items associated with IDs here, each one gets its own if statement
//inside each if statement, need to tell it what the name of the item is (in game), the description, 
//the item type (see above for item types, if you need another add it) and the name of the object
//associated wiht the sprite
//if statement template:
//curr_slot[2]="";
//curr_slot[3]="";
//curr_slot[10]=;
//curr_slot[11]=obj_;

if argument[0]==0{
	curr_slot[2]="Test Item";
	curr_slot[3]="this is a test, with a \ntest image";
	curr_slot[10]=0;
	curr_slot[11]=obj_item_placeholder;
}
if argument[0]==1{
	curr_slot[2]="Motel Key";
	curr_slot[3]="This is the key to your \nroom";
	curr_slot[10]=1;
	curr_slot[11]=obj_motel_key;
}

global.item_array[global.next_fillable_item_index]=curr_slot;

global.next_fillable_item_index+=1;