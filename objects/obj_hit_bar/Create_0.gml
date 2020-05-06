x_boundary_left = 7;

zone = 0.5;
failed = false;

with instance_create_layer(x + x_boundary_left, y+7, "UI", obj_hit_selector) {
	depth = -1;
	x_boundary_right = 218;
}