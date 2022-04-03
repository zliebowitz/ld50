// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_particles(){

}

function script_particles_system_init()
{
	global.part_system = part_system_create_layer("Instances", false);	
}

function script_particles_part1_init()
{
	
	global.part1 = part_type_create();

	//// This defines the particle's shape
	//part_type_shape(global.part1,pt_shape_pixel);

	//// This is for the size
	//part_type_size(global.part1,1,1,0,2);

	//// This sets its colour. There are three different codes for this
	////part_type_color1(global.part1,c_white);
	////part_type_color2(global.part1,c_yellow, c_orange );
	//part_type_color3(global.part1,c_yellow, c_orange, c_red);

	//// This is its alpha. There are three different codes for this
	//part_type_alpha1(global.part1,1);

	//// The particles speed
	//part_type_speed(global.part1,0.50,2,-0.10,0);

	//// The direction
	//part_type_direction(global.part1,90,90,5,20);

	//// This changes the rotation of the particle
	//part_type_orientation(global.part1,0,0,0,0,true);

	//// This is the blend mode, either additive or normal
	//part_type_blend(global.part1,1);

	//// This is its lifespan in steps
	//part_type_life(global.part1,5,30);
	
	
	part_type_shape(global.part1, pt_shape_pixel);
	part_type_size(global.part1, 0.01, 0.50, 0.01, 5);
	part_type_scale(global.part1, 1, 1);
	//part_type_colour3(global.part1, 4210816, 4227327, 8240895);
	part_type_color3(global.part1,c_yellow, c_orange, c_red);
	//part_type_alpha3(global.part1, 0.20, 0.80, 0);
	part_type_alpha1(global.part1,1);
	part_type_speed(global.part1, 0.1, 3, 0, 0);
	//part_type_direction(global.part1, 0, 359, -1, 20);
	part_type_direction(global.part1,90,90,0,3);
	//part_type_gravity(global.part1, 0, 270);
	part_type_orientation(global.part1, 0, 359, 0, 0, 1);
	part_type_blend(global.part1, 1);
	part_type_life(global.part1, room_speed/4, room_speed/2);
	
	
	
	
}

function script_particles_part1_create(particle_count)
{
	show_debug_message("Make Particle");
	var xx = x + 24 - random(48);
	//var yy = y + 20 - random(40);
	//part_particles_create(global.part_system, xx, yy, global.part1, particle_count);
	
	part_particles_create(global.part_system, xx, y, global.part1, 15);
}
