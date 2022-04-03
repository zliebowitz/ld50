// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_throw_snowball(angle_radians)
{
	var angle = angle_radians;
	var snowball = instance_create_depth(x+cos(angle)*sprite_width/2, y-sprite_height/2+sin(angle)*sprite_height/2, -100, object_snowball_1);
	with(snowball)
	{
		physics_apply_force(x,y, cos(angle)*throwforce, sin(angle)*throwforce)
	}
	
	physics_apply_force(x,y, -cos(angle)*recoilforce, -sin(angle)*recoilforce )
	numSnowballsThrown += 1;
	throw_enabled = false;
	alarm[0] = room_speed * .05;
}