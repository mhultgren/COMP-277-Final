/// @arg Response

// one GIANT switch statement for all possible dialogue responses
// make sure to check here before adding new branching dialogue
// in order to know which number to add
// pretty ugly, but what are you gonna do ¯\_(ツ)_/¯

switch(argument0) {
	case 0: break;
	case 1: scr_new_text_box(":)", 0); break;
	case 2: scr_new_text_box("Well fuck you too!", 1, ["3::)", "0::("]); break;
	case 3: scr_new_text_box(">:(", 1); break;
	default: break;
}