randomize();

global.pixel_font = font_add("pixel.ttf", 18, false, false, 32, 128);
global.gamePaused = false;
persistent = true;
battleEnded = false;
//display_set_gui_size(1024,768);
//texture_set_interpolation(true);

init_item_array();
init_evidence_array();
init_options_array();