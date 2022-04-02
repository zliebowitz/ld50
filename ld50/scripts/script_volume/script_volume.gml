// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function script_volume_init()
{
	audio_group_load(audiogroup_music);
	audio_group_load(audiogroup_sfx);
	script_volume_load();
	
	audio_master_gain(global.master_volume/100);
	audio_group_set_gain(audiogroup_music, global.music_volume/100, 0 );
	audio_group_set_gain(audiogroup_sfx, global.sfx_volume/100, 0 );
}

function script_volume_set_percent(volume_percent)
{
	global.master_volume = volume_percent*100;
	audio_master_gain(global.master_volume/100);
}

function script_volume_music_set_percent(volume_percent)
{
	global.music_volume = volume_percent*100;
	audio_group_set_gain(audiogroup_music, global.music_volume/100, 0 );
}

function script_volume_sfx_set_percent(volume_percent)
{
	global.sfx_volume = volume_percent*100;
	audio_group_set_gain(audiogroup_sfx, global.sfx_volume/100, 0 );
}

function script_volume_percent()
{
	return global.master_volume/100;
}

function script_volume_music_percent()
{
	return global.music_volume/100;
}

function script_volume_sfx_percent()
{
	return global.sfx_volume/100;
}

function script_volume_up()
{
	global.master_volume = min(round(global.master_volume + 5), 100);
	audio_master_gain(global.master_volume/100);
}


function script_volume_down()
{
	global.master_volume = max(global.master_volume - 5, 0.0);
	audio_master_gain(global.master_volume/100);
}

function script_volume_load()
{
	ini_open("volume.ini");
	global.master_volume = ini_read_real("volume","master",70);
	global.music_volume = ini_read_real("volume","music",70);
	global.sfx_volume =ini_read_real("volume","sfx",70);
	ini_close(); 
}

function script_volume_save()
{
	ini_open("volume.ini");
	ini_write_real("volume","master",global.master_volume);
	ini_write_real("volume","music",global.music_volume);
	ini_write_real("volume","sfx",global.sfx_volume);
	ini_close(); 
}