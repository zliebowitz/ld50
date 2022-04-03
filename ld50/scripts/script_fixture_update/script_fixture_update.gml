// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function script_fixture_init()
{
	numSnowballsThrown = 0;
	numSnowballsThrowable = 20;
	var fixture = physics_fixture_create();
	physics_fixture_set_density(fixture, 0.8);
	physics_fixture_set_restitution(fixture, 0.1);
	physics_fixture_set_collision_group(fixture, -1);
	physics_fixture_set_linear_damping(fixture, 0.1);
	physics_fixture_set_angular_damping(fixture, 0.1);
	physics_fixture_set_friction(fixture, 0.2);
	var tmp_index = sprite_index;
	sprite_index = sprite_snow_dude_1;
	physics_fixture_set_box_shape(fixture, abs(sprite_width) / 2.0, abs(sprite_height) / 2.0 );
	sprite_index = tmp_index;
	fixture_bind = physics_fixture_bind_ext(fixture,self,-1,  0);
	
	physics_fixture_delete(fixture);	
}

function script_fixture_update()
{	
	var max_scale = 2
	var min_scale = 0.4
	var scale_normalized = (max_scale - min_scale)*((numSnowballsThrowable - numSnowballsThrown) / numSnowballsThrowable)+min_scale;
	
	current_scale = scale_normalized;
	image_xscale = current_scale //setting this hear so it adjust in the sprite_w and sprite_h below
	image_yscale = image_xscale;
	
	script_fixture_step()
	
}

function script_fixture_step()
{
	physics_remove_fixture(self, fixture_bind);
	physics_fixture_delete(fixture_bind)
	
	var fixture = physics_fixture_create();
	physics_fixture_set_density(fixture, 0.8);
	physics_fixture_set_restitution(fixture, 0.1);
	physics_fixture_set_collision_group(fixture, -1);
	physics_fixture_set_linear_damping(fixture, 0.1);
	physics_fixture_set_angular_damping(fixture, 0.1);
	physics_fixture_set_friction(fixture, 0.2);
	
	var tmp_index = sprite_index;
	sprite_index = sprite_snow_dude_1;
	physics_fixture_set_box_shape(fixture, abs(sprite_width) / 2.0, abs(sprite_height) / 2.0 );
	sprite_index = tmp_index;
	
	fixture_bind = physics_fixture_bind_ext(fixture,self,-1, 0);
	
	physics_fixture_delete(fixture);
}
