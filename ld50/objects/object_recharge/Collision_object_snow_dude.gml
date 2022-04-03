/// @description Insert description here
// You can write your code in this editor


if(other.numSnowballsThrown != 0)
{
	other.numSnowballsThrown = 0;
	with(other)
	{
		script_fixture_update();
	}
	
	audio_play_sound(sound_sfx_recharge, 0, 0);
	instance_create_depth(x, y, depth, object_snowball_explosion_1);
	instance_destroy();
}
