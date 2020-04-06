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
	
	if (argument_count > 2) responses = argument[2];
}