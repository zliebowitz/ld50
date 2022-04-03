/// @description Insert description here
// You can write your code in this editor
if (surface_exists(object_snowverlay.overlay))
{
	surface_set_target(object_snowverlay.overlay)
	draw_self()
	surface_reset_target()
	instance_destroy()
}
