player_speed = 2;
// set the maximum player health
// current health
// and the amount of damage they do
global.player_health = 100;
global.current_player_health = global.player_health;
global.player_attack_power = 20;

state = states.active;
states_array[states.active] = state_active;
states_array[states.battle] = state_battle;