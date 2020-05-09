randomize();

global.pixel_font = font_add("pixel.ttf", 18, false, false, 32, 128);
global.gamePaused = false;
global.player_health = 100;
global.current_player_health = global.player_health;
global.death_script = scr_bellboy_die;

just_unpaused = false;
persistent = true;
battleEnded = false;

init_item_array();
init_evidence_array();
init_options_array();

game_variables();