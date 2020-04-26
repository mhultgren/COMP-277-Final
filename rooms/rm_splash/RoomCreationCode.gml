global.target_x = noone;
global.target_y = noone;
global.textSpeed = 0.75;
global.textOnScreen = false;

window_set_size(1500, 1035);
//surface_resize(application_surface,1000,700);


room_goto(rm_train_station_lobby);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);