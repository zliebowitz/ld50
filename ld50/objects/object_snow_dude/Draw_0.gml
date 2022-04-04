/// @description Insert description here
// You can write your code in this editor

//physics_world_draw_debug(phy_debug_render_coms | phy_debug_render_shapes);
//physics_draw_debug();

if (!place_meeting(x,y+3, object_platform_1))
{
	image_angle = radtodeg(arctan2(phy_speed_y, -phy_speed_x)) + 90
	sprite_index = sprite_snow_dude_fling
	
	in_air = true;
	script_sfx_roll_stop()
}
else if phy_speed_x > 0
{
	sprite_index = sprite_snow_dude_roll
	script_sfx_roll_start()
	
	current_facing = 1;
}
else if phy_speed_x < 0
{
	sprite_index = sprite_snow_dude_roll
	current_facing = -1;
	script_sfx_roll_start()
}
else
{
	sprite_index = sprite_snow_dude_1
	script_sfx_roll_stop()
}

image_xscale = image_xscale * current_facing;

if (victory)
{
	sprite_index = sprite_snow_dude_1
}

draw_self()



