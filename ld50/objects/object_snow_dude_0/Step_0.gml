
if keyboard_check(ord("W"))
{
	physics_apply_force(x, y, 0, -force_amt)
}
if keyboard_check(ord("A"))
{
	physics_apply_force(x, y, -force_amt, 0)
}
if keyboard_check(ord("S"))
{
	physics_apply_force(x, y, 0, force_amt)
}
if keyboard_check(ord("D"))
{
	physics_apply_force(x, y, force_amt, 0)
}

accel = phy_speed - prev_phy_speed
prev_phy_speed = phy_speed
phy_direction = point_direction(0, 0, phy_speed_x, phy_speed_y)

//show_debug_message(string(accel))
//show_debug_message(direction)
