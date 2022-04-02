
//var x_factor = (1 - accel*dcos(phy_direction)*anim_factor)
//var y_factor = (1 - accel*dsin(phy_direction)*anim_factor)

var x_factor = (1 - lengthdir_x(accel, phy_direction)*anim_factor)
var y_factor = (1 - lengthdir_y(accel, phy_direction)*anim_factor)

show_debug_message(string(x_factor) + "," + string(y_factor) + " : " + string(phy_direction))

draw_sprite_ext(sprite_index, image_index, x, y, x_factor, y_factor, image_angle, image_blend, image_alpha)

