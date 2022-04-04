/// @description Insert description here
// You can write your code in this editor

switch (title_option)
{
	case title_options.start:
	{
		object_transition_fade_out.room_id = room_intro_1;
		break;
	}
	//case title_options.options:
	//{
	//	object_transition_fade_out.room_id = room_title_screen;
	//	break;
	//}
	case title_options.exit_game:
	{
		object_transition_fade_out.room_id = object_transition_fade_out.game_exit;
		break;
	}
}
