/// @description Insert description here
// You can write your code in this editor

if(global.pause)
{
	enter_pressed = false;
	
	if(title_option == title_options.start)
	{
		script_pause_system_unpause();
	}
	else if (title_option == title_options.options)
	{
		
	}
	else if(title_option == title_options.exit_game)
	{
		script_pause_system_exit();
	}
	
	
		
}

