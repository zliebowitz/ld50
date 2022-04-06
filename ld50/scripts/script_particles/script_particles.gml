// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function script_particles_system_init()
{
		//part_system = part_system_create();//depth of 0, use other create to put on layer
	part_system = part_system_create_layer(self.layer, false);
}

function script_particles_fire_init(fire_direction = 90)
{
	part_fire = part_type_create();

	//// This defines the particle's shape
	part_type_shape(part_fire, pt_shape_pixel);

	//// This is for the size
	part_type_size(part_fire, 0.01, 0.50, 0.01, 5);
	part_type_scale(part_fire, 1, 1);

	//// This sets its colour. There are three different codes for this
	part_type_color3(part_fire,c_yellow, c_orange, c_red);

	//// This is its alpha. There are three different codes for this
		//part_type_alpha3(part1, 0.20, 0.80, 0);
	part_type_alpha1(part_fire,1);

	//// The particles speed
	part_type_speed(part_fire, 0.1, 3, 0, 0);

	//// The direction
	part_type_direction(part_fire,fire_direction,fire_direction,0,3);

	//// This changes the rotation of the particle
	part_type_orientation(part_fire, 0, 359, 0, 0, 1);

	//// This is the blend mode, either additive or normal
	part_type_blend(part_fire, 1);

	//// This is its lifespan in steps
	part_type_life(part_fire, room_speed/4, room_speed/2);
	
}

function script_particles_fire_create(fire_width, y_location)
{
	var xx = x + fire_width/2 - random(fire_width);
	
	part_particles_create(part_system, xx, y_location, part_fire, max(fire_width,1));
}

function script_particles_fire_cleanup()
{
	part_type_destroy(part_fire);
	part_system_destroy(part_system);
}

