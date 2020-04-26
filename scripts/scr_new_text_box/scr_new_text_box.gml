/// @arg Name
/// @arg Message
/// @arg Background
/// @arg Responses


var obj;

// decide whether or not to queue text
if (instance_exists(obj_text)) obj = obj_text_queued;
else obj = obj_text;

with (instance_create_layer(x, y, "Entities", obj)) {
	speaker_name = argument[0];
	message = argument[1];
	
	if (instance_exists(other)) originInstance = other.id;
	else originInstance = noone;
	
	if (argument_count > 2) background = argument[2];
	else background = 0;
	
	if (argument_count > 3) {
		responses = argument[3];
		
		for (var i=0; i<array_length_1d(responses); i++) {
			var marker_position = string_pos(":", responses[i]);
			responses_scripts[i] = real(string_copy(responses[i], 1, marker_position-1));
			responses[i] = string_delete(responses[i], 1, marker_position);
		}
	} else {
		responses = [-1];
		responses_scripts = [-1];
	}
}