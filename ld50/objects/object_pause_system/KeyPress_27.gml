/// @description Insert description here
// You can write your code in this editor


if(!pause)
{
	pause = true;
		
	// deactivate all objects (except this one):
	instance_deactivate_all(true);
	physics_pause_enable(true);
		
	// disable drawing of the application surface because we will draw our copy now
	application_surface_draw_enable(false);
	audio_pause_all();
}
else
{
	
	pause = false;

	instance_activate_all();
	physics_pause_enable(false);
		
	application_surface_draw_enable(true);
	audio_resume_all();
	
}
