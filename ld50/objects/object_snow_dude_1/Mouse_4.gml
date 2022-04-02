/// @description Insert description here
// You can write your code in this editor 



snowball = instance_create(x, y, object_snowball_1);
with(snowball)
{

    physics_apply_impulse(x, y, (mouse_x - x) * global.throwstrength, -(y - mouse_y) * global.throwstrength);
}
