draw_self();
if (collision_circle(x, y, 30, obj_player, false, true)) {
	draw_sprite(spr_key_e, 0, x-16, y-32);
}