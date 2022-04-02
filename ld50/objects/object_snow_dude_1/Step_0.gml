/// @description Insert description here
// You can write your code in this editor

keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
keyThrow = keyboard_check_pressed(ord("E")) || mouse_check_button_pressed(mb_left);


if(keyUp && can_jump)
{
	physics_apply_force(x,y,0,-jumpforce);
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

if(keyThrow && throw_enabled && numSnowballsThrown < numSnowballsThrowable)
{
	var angle = arctan2(mouse_y-y, mouse_x - x); 

	var snowball = instance_create_depth(x+cos(angle)*sprite_width/2, y-sprite_height/2+sin(angle)*sprite_height/2, -100, object_snowball_1);
	with(snowball)
	{
		var angle = arctan2(mouse_y-y, mouse_x - x); 
		physics_apply_force(x,y, cos(angle)*throwforce, sin(angle)*throwforce)
	}
	
	physics_apply_force(x,y, -cos(angle)*recoilforce, -sin(angle)*recoilforce )
	numSnowballsThrown += 1;
	throw_enabled = false;
	alarm[0] = room_speed * .05;

	image_xscale = 2 * (numSnowballsThrowable - numSnowballsThrown) / numSnowballsThrowable;
	image_yscale = image_xscale;

		physics_remove_fixture(self, fixture_bind);
	physics_fixture_delete(fixture_bind)
	
	var fixture = physics_fixture_create();
	physics_fixture_set_density(fixture, 0.8);
	physics_fixture_set_restitution(fixture, 0.1);
	physics_fixture_set_collision_group(fixture, -1);
	physics_fixture_set_linear_damping(fixture, 0.1);
	physics_fixture_set_angular_damping(fixture, 0.1);
	physics_fixture_set_friction(fixture, 0.2);
	physics_fixture_set_box_shape(fixture, abs(sprite_width) / 2.0, abs(sprite_height) / 2.0 );
	//fixture_bind = physics_fixture_bind_ext(fixture, self, x, y - sprite_height / 2);
	fixture_bind = physics_fixture_bind_ext(fixture,self,-1, -abs(sprite_height) / 2.0 - 1);
	
	physics_fixture_delete(fixture);
}
phy_speed_x = clamp(phy_speed_x, -max_speed, max_speed);
phy_speed_y = clamp(phy_speed_y, -max_speed, max_speed);




// Update sprite based on movement and location, TODO: and current size
if phy_speed_x > 0
{
	sprite_index = sprite_snow_dude_roll
	image_xscale = abs(image_xscale)
}
else if phy_speed_x < 0
{
	sprite_index = sprite_snow_dude_roll
	image_xscale = abs(image_xscale) * -1
}
else
{
	sprite_index = sprite_snow_dude_1
}
