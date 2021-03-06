if (!global.gamePaused) {
	lerpProgress += (1 - lerpProgress) / 50;
	textProgress = clamp(textProgress+global.textSpeed, 0, string_length(message));;

	x1 = lerp(x1, x1Target, lerpProgress);
	x2 = lerp(x2, x2Target, lerpProgress);

	keyUp = keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(ord("S"));
	responseHighlighted += (keyDown - keyUp);
	var responseMax = array_length_1d(responses)-1;
	var responseMin = 0;
	if (responseHighlighted > responseMax) responseHighlighted = responseMin;
	if (responseHighlighted < responseMin) responseHighlighted = responseMax;

	if (keyboard_check_pressed(vk_enter)) {
		var messageLength = string_length(message);
		
		if (textProgress >= messageLength) {
			if (responses[0] != -1) {
				with (originInstance) {
					scr_dialogue_responses(other.responses_scripts[other.responseHighlighted])
				}
			}
			
			instance_destroy();
		
			if (instance_exists(obj_text_queued)) {
				with (obj_text_queued) ticket--;
			} else {
				global.textOnScreen = false;
			}
		
		} else {
			textProgress = messageLength;
		}
	}
}