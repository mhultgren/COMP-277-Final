/// @description Insert description here
// You can write your code in this editor


if (mode == 1){ // if fading, you should not be able to control the character
	
	with (obj_player) 
	{
		hascontrol = false;
		//vsp = 0;
		//hsp = 0; // stop the character entirely
	}


	if (percent < percenttarget	){
		percent += rate;
	}
	
	else{
		percent = 1;

		room_goto(global.target_room);
	
	}
}

else{ 
	
	if (percent > 0){
		
		percent -= rate;
		
	}
	else{
		percent = 0;
		
		// after fading in
		// player should have control back 
		with (obj_player) {
			hascontrol = true;
		}
		
		instance_destroy();
		
	}
}
	