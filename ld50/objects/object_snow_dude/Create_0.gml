recoilforce = 160000;
jumpforce = 100000;
walkspeed = 1.5;
max_speed = 40;
max_walkspeed = floor(max_speed/3);
speed_damping = 1;


throw_enabled = true;
can_jump = false;
damp_speed = true;

accel = 0
phy_direction = 0

// Circular array of recent phy_speed's
prev_phy_speeds = []
prev_phy_speeds_len = 60
prev_phy_speeds_i = 0

script_fixture_init();

phy_fixed_rotation=true;
current_scale = 2;
