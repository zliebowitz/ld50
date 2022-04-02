// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_music_play(sound_id, loop_begin_time, loop=true)
{
	if(is_string(sound_id))
	{
		sound_id = asset_get_index(sound_id);
	}

	if (!audio_is_playing(sound_id))
	{
		audio_stop_all();
		object_music_player.sound = audio_play_sound(sound_id, 10, loop);
		object_music_player.played = false;
		object_music_player.loop_begin_time = loop_begin_time;
		object_music_player.alarm[0] = object_music_player.loop_begin_time * room_speed;
	}
}
