

if(!pause)
{
	// Unpaused


}
else
{
	
	// Paused
	if(button_resume != undefined && 
		button_resume.button_selected)
	{
		script_pause_system_unpause();
	}
	else if(button_exit != undefined && 
		button_exit.button_selected)
	{
		script_pause_system_exit();
	}
}
