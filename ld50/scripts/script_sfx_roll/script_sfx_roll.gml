// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.roll_sfx = undefined;
function script_sfx_roll_start()
{
	if(global.roll_sfx == undefined)
	{
		global.roll_sfx =  audio_play_sound(sound_sfx_roll,0,1)
	}
}

function script_sfx_roll_stop()
{
	if(global.roll_sfx != undefined)
	{
		audio_stop_sound(global.roll_sfx)
		global.roll_sfx = undefined;
	}
}
