/// @description Insert description here
// You can write your code in this editor

keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
keyThrow = keyboard_check_pressed(ord("E")) || mouse_check_button_pressed(mb_left);


if(keyUp)
{
	physics_apply_force(x,y,0,-walkforce);
}


if(keyDown)
{
	physics_apply_force(x,y,0,walkforce);
}


if(keyLeft)
{
	physics_apply_force(x,y,-walkforce,0);
}

if(keyRight)
{
	physics_apply_force(x,y,walkforce,0);	
}

if(keyThrow && place_meeting(x,y+1, object_platform_1))
{
	var angle = arctan2(mouse_y-y, mouse_x - x); 

	var snowball = instance_create_depth(x+cos(angle)*sprite_width/2, y-sprite_height/2+sin(angle)*sprite_height/2, -100, object_snowball_1);
	with(snowball)
	{
		var angle = arctan2(mouse_y-y, mouse_x - x); 
		physics_apply_force(x,y, cos(angle)*throwforce, sin(angle)*throwforce)
	}
	
	physics_apply_force(x,y, -cos(angle)*recoilforce, -sin(angle)*recoilforce )
}

