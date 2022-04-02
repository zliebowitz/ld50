recoilforce = 160000;
jumpforce = 100000;
walkspeed = 1.5;
max_speed = 40;
max_walkspeed = floor(max_speed/3);
speed_damping = 1;


var fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, abs(sprite_width) / 2, abs(sprite_height) / 2);

physics_fixture_set_density(fixture, 0.8);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_collision_group(fixture, -1);
physics_fixture_set_linear_damping(fixture, 0.1);
physics_fixture_set_angular_damping(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
//fixture_bind = physics_fixture_bind(fixture, self);
fixture_bind = physics_fixture_bind_ext(fixture,self, -1, -abs(sprite_height) / 2 - 1);
physics_fixture_delete(fixture);

phy_fixed_rotation=true;
throw_enabled = true;
can_jump = false;
damp_speed = true;

numSnowballsThrowable = 20;
numSnowballsThrown=0;
image_xscale = 2;
image_yscale = 2;
