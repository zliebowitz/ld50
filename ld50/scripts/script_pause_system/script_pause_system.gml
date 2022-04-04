// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.pause = false;
function script_pause_system_pause()
{
	global.pause = true;
		
	// deactivate all objects (except this one):
	instance_deactivate_all(true);
	physics_pause_enable(true);
		
	// disable drawing of the application surface because we will draw our copy now
	audio_pause_all();
	
	//var view_midw = surface_get_width(application_surface)/2;
	//var view_midh  = surface_get_height(application_surface)/2;
	button_resume = instance_create_depth(447, 732, 0, object_title_start);
	button_options = instance_create_depth(751, 732, 0, object_title_options);
	button_exit = instance_create_depth(1023, 732, 0, object_title_exit);

	
}

function script_pause_system_draw_sprites()
{
	draw_sprite(sprite_title_snow,-1,612, 239);
	draw_sprite(sprite_title_dude,-1, 861, 599);
	draw_sprite(sprite_title_snow_dude,-1, 565, 503);
	draw_sprite(sprite_title_background,-1, 916, 415);
}

function script_pause_system_unpause()
{

	instance_destroy(button_resume);
	instance_destroy(button_options);
	instance_destroy(button_exit);

	button_resume = undefined;
	button_options = undefined;
	button_exit = undefined;
	
	
	
	global.pause = false;

	instance_activate_all();
	physics_pause_enable(false);
		
	audio_resume_all();
}

function script_pause_system_exit()
{
	script_pause_system_unpause();
	room_goto(room_title_screen);
	
}
