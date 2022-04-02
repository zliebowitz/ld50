/// @description Insert description here
// You can write your code in this editor

keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
keyThrow = keyboard_check_pressed(ord("E"));

if(keyUp)
{
	y -= moveSpeed;
}


if(keyDown)
{
	y += moveSpeed;
}


if(keyLeft)
{
	x-= moveSpeed;
}

if(keyRight)
{
	x+= moveSpeed;	
}

if(keyThrow)
{
	instance_create_depth(x, y, -100, object_snowball_1);
}

