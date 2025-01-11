if ((ds_list_find_index(global.saveroom, id) != -1) && (global.panic == 0))
    image_index = 0
if place_meeting(x, y, obj_player1) && image_index == 1
{
	with obj_player1
	{
		sprite_index = spr_walkfront
		grav = 0.5
		state = 61
	}
}
