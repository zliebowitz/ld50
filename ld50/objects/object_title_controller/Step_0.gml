/// @description Insert description here
// You can write your code in this editor

if (enter_pressed)
{
	return;
}

keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyEnter = keyboard_check(vk_enter) || keyboard_check(vk_space) || mouse_selection;

// Process input
if (keyLeft && !left_pressed)
{
	title_option = (title_option + title_options.num_options - 1) % title_options.num_options;
	audio_play_sound(sound_sfx_selection, 10, false);
	left_pressed = true;
}
else if (!keyLeft && left_pressed)
{
	left_pressed = false;
}

if (keyRight && !right_pressed)
{
	title_option = (title_option + 1) % title_options.num_options;
	audio_play_sound(sound_sfx_selection, 10, false);
	right_pressed = true;
}
else if (!keyRight && right_pressed)
{
	right_pressed = false;
}

if (keyEnter && !enter_pressed)
{
	mouse_selection = false;
	if(!global.pause)
	{
		audio_stop_all();
	}
	audio_play_sound(sound_sfx_selection_made, 10, false);
	alarm[0] = room_speed;
	enter_pressed = true;
}

switch (title_option)
{
	case title_options.start:
	{
		object_title_start.image_speed = 1;
		//object_title_options.image_speed = 0;
		object_title_exit.image_speed = 0;
		break;
	}
	//case title_options.options:
	//{
	//	object_title_start.image_speed = 0;
	//	object_title_options.image_speed = 1;
	//	object_title_exit.image_speed = 0;
	//	break;
	//}
	case title_options.exit_game:
	{
		object_title_start.image_speed = 0;
		//object_title_options.image_speed = 0;
		object_title_exit.image_speed = 1;
		break;
	}
}
