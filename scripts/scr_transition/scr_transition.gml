/// @desc scr_transition(fadeout true or false,target room)
/// @arg fadeout sets it to fade out (true) or fade in
/// @arg targetroom sets target room
/// @arg target_x sets target horizontal position
/// @arg target_y sets target vertical position

room_persistent=false;

if (argument_count > 1){
		global.target_room = argument[1];
		
		if (argument_count > 2) {
			
			global.target_x = argument[2];
		
			if (argument_count > 3){
				global.target_y = argument[3];	
				
		}
	}
}


var transition = instance_create_layer(0,0,"Transition",obj_transition);


if (argument[0]){
		with (transition){
			mode = 1; //mode 1 is fade out
			percent = 0;
		}
}
else {
		with (transition)
		{
			mode = 2; //mode 2 is fade in
			percent = 1;
		}
	}
