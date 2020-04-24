/// @arg Message
/// @arg Background
/// @arg Responses


var obj;

// decide whether or not to queue text
if (instance_exists(obj_text)) obj = obj_text_queued;
else obj = obj_text;

with (instance_create_layer(x, y, "Instances", obj)) {
	message = argument[0];
	
	if (instance_exists(other)) originInstance = other.id;
	else originInstance = noone;
	
	if (argument_count > 1) background = argument[1];
	else background = 0;
	
	if (argument_count > 2) {
		responses = argument[2];
		
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