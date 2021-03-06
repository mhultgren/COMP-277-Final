surface_resize(application_surface, 640, 480);

if (!instance_exists(obj_player)) {
	if (global.target_x == noone || global.target_y == noone) {
		instance_create_layer(223, 234, "Player", obj_player);
	} else {
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
}

// creates cutscene variable if the intro has not yet been completed
if (!global.intro_done) instance_create_layer(x, y, "Player", obj_cutscene);

if (global.day_number == 3) with instance_nearest(0, 0, obj_station_attendant) instance_destroy();

if (!audio_is_playing(snd_music)) audio_play_sound(snd_music, 1, true);