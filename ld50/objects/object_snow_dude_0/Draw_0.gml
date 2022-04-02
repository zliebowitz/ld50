
var x_factor = 1/remap_value(accel*100, -10, 10, 0.75, 1.5)
var y_factor =   remap_value(accel*100, -10, 10, 0.75, 1.5)
x_factor = clamp(x_factor, 0.75, 1.5)
y_factor = clamp(y_factor, 0.75, 1.5)
show_debug_message(string(accel*100) + " : " + string(x_factor) + " : " + string(y_factor))

if (!place_meeting(x,y+1, object_platform_1))
{
	draw_sprite_ext(sprite_index, image_index, x, y, x_factor, y_factor, phy_direction + 90, image_blend, image_alpha)
}
else
{
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
}
