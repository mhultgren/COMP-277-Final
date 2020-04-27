counter++;

if (exposition_text[2] != "") {
	if (counter == room_speed * 8) fading = true;
	if (counter == room_speed * 13) fading = true;
	if (counter == room_speed * 17) fading = true;
	if (counter == room_speed * 18) game_end();
} else {
	if (counter == room_speed * 8) fading = true;
	if (counter == room_speed * 13) fading = true;
	if (counter == room_speed * 14) room_goto(rm_train_station_lobby);
}