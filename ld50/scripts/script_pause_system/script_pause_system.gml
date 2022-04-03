// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_pause_system_pause()
{
	pause = true;
		
	// deactivate all objects (except this one):
	instance_deactivate_all(true);
	physics_pause_enable(true);
		
	// disable drawing of the application surface because we will draw our copy now
	audio_pause_all();
	
	var view_midw = surface_get_width(application_surface)/2;
	var view_midh  = surface_get_height(application_surface)/2;
	button_resume = instance_create_depth(view_midw, view_midh  -200, 0, object_pause_menu_resume);
	button_exit = instance_create_depth(view_midw, view_midh + +200, 0, object_pause_menu_exit);
}

function script_pause_system_unpause()
{
	instance_destroy(button_resume);
	instance_destroy(button_exit);
	button_resume = undefined;
	button_exit = undefined;
	
	
	
	pause = false;

	instance_activate_all();
	physics_pause_enable(false);
		
	audio_resume_all();
}

function script_pause_system_exit()
{
	script_pause_system_unpause();
	room_goto(room_title_screen);
	
}
