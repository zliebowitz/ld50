/// @description Insert description here
overlay = surface_create(room_width, room_height)

show_debug_message("h");
if global.persistent_snow_level == room
{
	show_debug_message("jjjjjjjjjjjjjj")
	overlay = global.persistent_snoverlay
}

global.persistent_snoverlay = overlay
global.persistent_snow_level = room

x=0
y=0
depth = -100
