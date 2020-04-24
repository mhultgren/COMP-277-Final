draw_self();
draw_set_color(c_white);

switch(option_highlighted) {
	case 0:
		draw_rectangle(35, 432, 175, 435, false);
		break;
	case 1:
		draw_rectangle(450, 432, 565, 435, false);
		break;
}