player_speed = 2;
// set the maximum player health
// current health
// and the amount of damage they do
global.player_health = 100;
global.current_player_health = global.player_health;
global.player_attack_power = 20;
global.cutscene = false;

// chance of hitting enemy (out of 10)
global.hit_chance = 6;

state = states.active;
states_array[states.active] = state_active;