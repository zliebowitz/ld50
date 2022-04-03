//Add pause menu so we don't have to add to rooms manually
pause_system = instance_create_depth(0,0,0, object_pause_system)

recoilforce = 80;
walkspeed = 1.5;
max_y_speed = 20;
max_x_speed = 40;

max_walkspeed = 12;
speed_damping = 2;
time_until_damping = 0
walkforce = 6

throw_enabled = true;
in_air = false;
damp_speed = true;

accel = 0
phy_direction = 0

// Circular array of recent phy_speed's
prev_phy_speeds = []
prev_phy_speeds_len = 60
prev_phy_speeds_i = 0

numSnowballsThrown = 0;
numSnowballsThrowable = 10;

script_fixture_init();



phy_fixed_rotation=true;
current_scale = 2;
current_facing = 1;
