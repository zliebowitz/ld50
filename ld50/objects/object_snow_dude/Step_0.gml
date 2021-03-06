/// @description Insert description here
// You can write your code in this editor

if (victory)
{
	phy_active = false;
	
	return;
}

keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check_pressed(ord("W"))
keyDown = keyboard_check_pressed(ord("S"))
keyThrow = mouse_check_button_pressed(mb_left);


if(keyUp && throw_enabled)
{
	//var snowball = instance_create_depth(x, y-sprite_height/2, -100, object_snowball_1);
	//with(snowball)
	//{ 
	//	physics_apply_force(x,y, 0, throwforce)
	//}
	
	//physics_apply_force(x,y, 0, -recoilforce)
	
	var angle = arctan2(1, 0); 
	script_throw_snowball(angle);
	
	script_fixture_update();
	audio_play_sound(sound_sfx_jump,0,0)
	
}

if(keyDown && throw_enabled)
{
	//var snowball = instance_create_depth(x, y-sprite_height/2, -100, object_snowball_1);
	//with(snowball)
	//{ 
	//	physics_apply_force(x,y, 0, throwforce)
	//}
	
	//physics_apply_force(x,y, 0, -recoilforce)
	
	var angle = arctan2(-1, 0); 
	script_throw_snowball(angle);
	
	script_fixture_update();
	audio_play_sound(sound_sfx_jump,0,0)
	
}


if(keyLeft && phy_speed_x > -max_walkspeed)
{
	physics_apply_force(x,y,-walkforce,0);
	//phy_speed_x -= walkspeed
	damp_speed = false;
}

if(keyRight && phy_speed_x < max_walkspeed)
{
	physics_apply_force(x,y,walkforce,0);	
	//phy_speed_x += walkspeed
	damp_speed = false
}

// If the player is not moving left or right, slow their x speed
if (damp_speed && time_until_damping <= 0)
{
	if abs(phy_speed_x) <= speed_damping
		phy_speed_x = 0
	else if (phy_speed_x > 0)
		phy_speed_x -= speed_damping
	else if (phy_speed_x < 0)
		phy_speed_x += speed_damping
}
if time_until_damping > 0
	time_until_damping --
damp_speed = true

if(keyThrow && throw_enabled)
{
	time_until_damping = 10
	var angle = arctan2(mouse_y-y, mouse_x - x); 
	script_throw_snowball(angle);
	script_fixture_update();
	audio_play_sound(sound_sfx_throw,0,0)
}
phy_speed_x = clamp(phy_speed_x, -max_x_speed, max_x_speed);
phy_speed_y = clamp(phy_speed_y, -max_y_speed, max_y_speed);


var calc_phy_speed = sqrt(sqr(phy_speed_x) + sqr(phy_speed_y))
accel = calc_phy_speed - global_array_mean(prev_phy_speeds)
phy_direction = radtodeg(arctan2(phy_speed_y, -phy_speed_x))
array_delete(prev_phy_speeds, prev_phy_speeds_i, 1)
array_insert(prev_phy_speeds, prev_phy_speeds_i, calc_phy_speed)
prev_phy_speeds_i += 1
prev_phy_speeds_i %= prev_phy_speeds_len

if (!place_meeting(x,y + 3, object_platform_1))
{
	image_xscale = current_scale/global_remap_value(accel, -10, 10, 0.75, 1.5)
	image_yscale = current_scale*global_remap_value(accel, -10, 10, 0.75, 1.5)
}
else
{
	image_xscale = current_scale;
	image_yscale = current_scale;
}



if(	numSnowballsThrown/numSnowballsThrowable == 1)
{
	audio_play_sound(sound_sfx_death,0,0);
	room_restart();
}

