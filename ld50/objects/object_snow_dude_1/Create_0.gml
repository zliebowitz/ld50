recoilforce = 3500;
//walkforce = 100;
max_speed = 5;

var fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, abs(sprite_width) / 2, abs(sprite_height) / 2);
physics_fixture_set_density(fixture, 0.8);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_collision_group(fixture, -1);
physics_fixture_set_linear_damping(fixture, 0.1);
physics_fixture_set_angular_damping(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
fixture_bind = physics_fixture_bind(fixture, self);
physics_fixture_delete(fixture);

phy_fixed_rotation=true;
throw_enabled = true;

numSnowballsTotal = 20;
numSnowballsThrown = 0;

physics_world_draw_debug(phy_debug_render_coms | phy_debug_render_shapes);
