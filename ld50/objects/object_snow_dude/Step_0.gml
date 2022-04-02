/// @description Insert description here
// You can write your code in this editor



keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check_pressed(ord("W"))
keyDown = keyboard_check(ord("S"))
keyThrow = keyboard_check_pressed(ord("E")) || mouse_check_button_pressed(mb_left);


if(keyUp && can_jump)
{
	physics_apply_force(x,y,0,-recoilforce);
	script_fixture_update();
	
}
can_jump = false;


if(keyDown)
{
	//physics_apply_force(x,y,0,walkforce);
}



if(keyLeft && phy_speed_x > -max_walkspeed)
{
	//physics_apply_force(x,y,-walkforce,0);
	phy_speed_x -= walkspeed
	damp_speed = false;
}

if(keyRight && phy_speed_x < max_walkspeed)
{
	//physics_apply_force(x,y,walkforce,0);	
	phy_speed_x += walkspeed
	damp_speed = false
}

// If the player is not moving left or right, slow their x speed
if (damp_speed)
{
	if abs(phy_speed_x) <= speed_damping
		phy_speed_x = 0
	else if (phy_speed_x > 0)
		phy_speed_x -= speed_damping
	else if (phy_speed_x < 0)
		phy_speed_x += speed_damping
}
damp_speed = true

if(keyThrow && throw_enabled)
{
	var angle = arctan2(mouse_y-y, mouse_x - x); 

	var snowball = instance_create_depth(x+cos(angle)*sprite_width/2, y-sprite_height/2+sin(angle)*sprite_height/2, -100, object_snowball_1);
	with(snowball)
	{
		var angle = arctan2(mouse_y-y, mouse_x - x); 
		physics_apply_force(x,y, cos(angle)*throwforce, sin(angle)*throwforce)
	}
	
	physics_apply_force(x,y, -cos(angle)*recoilforce, -sin(angle)*recoilforce )
	throw_enabled = false;
	alarm[0] = room_speed * .05;
	
	script_fixture_update();
}
phy_speed_x = clamp(phy_speed_x, -max_speed, max_speed);
phy_speed_y = clamp(phy_speed_y, -max_speed, max_speed);



accel = phy_speed - array_mean(prev_phy_speeds)
phy_direction = radtodeg(arctan2(phy_speed_y, -phy_speed_x))
array_delete(prev_phy_speeds, prev_phy_speeds_i, 1)
array_insert(prev_phy_speeds, prev_phy_speeds_i, phy_speed)
prev_phy_speeds_i += 1
prev_phy_speeds_i %= prev_phy_speeds_len

if (!place_meeting(x,y+1, object_platform_1))
{
	image_xscale = current_scale*1/remap_value(accel, -10, 10, 0.75, 1.5)
	image_yscale = current_scale*  remap_value(accel, -10, 10, 0.75, 1.5)
	
	
}
else
{
	image_xscale = current_scale;
	image_yscale = current_scale;
}


if phy_speed_x > 0
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
