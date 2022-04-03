/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape)
{
	expand_direction *= -1
}

var expand_speed = expand_direction*delta_time/(1000000*expand_time)

expand_t = clamp(expand_t + expand_speed, 0, 1)
image_xscale = expand_t*(menu_width/sprite_get_width(sprite_index))
image_yscale = expand_t*(menu_height/sprite_get_height(sprite_index))

x = window_get_width()/2
y = window_get_height()/2

draw_self()
