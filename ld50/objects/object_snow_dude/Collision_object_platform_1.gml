/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y+3, object_platform_1))
{
	if(in_air)
	{
		audio_play_sound(sound_sfx_land,0,0);	
	}
	in_air = false;
}





throw_enabled = true;
can_jump = true;
