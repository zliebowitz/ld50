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
	
	var left_side = camera_get_view_x(view_camera[0]);
	var top_side = camera_get_view_y(view_camera[0]);
	button_resume = instance_create_depth(left_side + 447, top_side+537, 0, object_title_resume);
	//button_options = instance_create_depth(left_side + 751, top_side+632, 0, object_title_options);
	button_exit = instance_create_depth( left_side + 1023, top_side+537, 0, object_title_exit);

	
}

function script_pause_system_draw_sprites()
{
	var left_side = camera_get_view_x(view_camera[0]);
	var top_side = camera_get_view_y(view_camera[0]);
	//draw_sprite(sprite_title_snow,-1,left_side+612, top_side+139);
	//draw_sprite(sprite_title_dude,-1, left_side+861, top_side+499);
	//draw_sprite(sprite_title_snow_dude,-1, left_side+565, top_side+403);
	//draw_sprite(sprite_title_background,-1, left_side+916, top_side+315);
	
	//draw_sprite(sprite_game_controls, -1, left_side + 1100, top_side + 100);
	draw_sprite(sprite_game_controls, -1, left_side + view_wport[0] / 2,
		top_side + view_hport[0] / 2 - 95);
}

function script_pause_system_unpause()
{

	instance_destroy(button_resume);
	//instance_destroy(button_options);
	instance_destroy(button_exit);

	button_resume = undefined;
	//button_options = undefined;
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
