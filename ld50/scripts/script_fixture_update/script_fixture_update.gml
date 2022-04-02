// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_fixture_update()
{
	numSnowballsThrown += 1;
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