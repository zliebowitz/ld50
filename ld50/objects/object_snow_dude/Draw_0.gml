/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x,y+3, object_platform_1))
{
	image_angle = radtodeg(arctan2(phy_speed_y, -phy_speed_x)) + 90
	sprite_index = sprite_snow_dude_fling
}
else if phy_speed_x > 0
{
	sprite_index = sprite_snow_dude_roll
	current_facing = 1;
}
else if phy_speed_x < 0
{
	sprite_index = sprite_snow_dude_roll
	current_facing = -1;
}
else
{
	sprite_index = sprite_snow_dude_1
}

image_xscale = image_xscale * current_facing;
draw_self()
