function scr_player_bump() {
	movespeed = 0
	mach2 = 0
	start_running = 1
	bumped = 1
	alarm[4] = 14
	if (grounded && (vsp > 0))
	    hsp = 0
	if (floor(image_index) == (image_number - 1))
	{
	    state = 0
		sprite_index = spr_machfreefall
	}
	if ((sprite_index != spr_player_catched) && ((sprite_index != spr_tumbleend) && (sprite_index != spr_hitwall)))
	    sprite_index = spr_player_wallsplat
	if (sprite_index == spr_player_wallsplat)
	{
		vsp = 0
		hsp = 0
	}
	image_speed = 0.35



}
