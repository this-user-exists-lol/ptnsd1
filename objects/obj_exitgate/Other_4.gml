if ((ds_list_find_index(global.saveroom, id) != -1) && (global.panic == 0))
    image_index = 0
place_meeting(x, y, obj_player1)
{
	with obj_player1
	{
		grav = 0.5
		state = 61
	}
}

