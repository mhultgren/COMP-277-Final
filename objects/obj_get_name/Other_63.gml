var i_d = ds_map_find_value(async_load, "id");
if i_d == first_name {
   if ds_map_find_value(async_load, "status") {
      if ds_map_find_value(async_load, "result") != "" {
         global.first_name = ds_map_find_value(async_load, "result");
      } else global.first_name = "Quinn";
   }
} else if i_d == last_name {
	if ds_map_find_value(async_load, "status") {
      if ds_map_find_value(async_load, "result") != "" {
         global.last_name = ds_map_find_value(async_load, "result");
      } else global.last_name = "Gray";
   }
}