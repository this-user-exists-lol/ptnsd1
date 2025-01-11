function scr_player_mapworld()
{
	grav = 0
	move = (key_left + key_right)
	hsp = (move * movespeed)
	if (key_up)
	{
		if vsp > -5
			vsp -= 0.2
	}
	else if (key_down)
	{
		if vsp < 5
			vsp += 0.2
	}
	else
	{
		vsp = 0
		if sprite_index == spr_pep_mapbackwalk
			sprite_index = spr_pep_mapback
		else if sprite_index == spr_pep_mapfrontwalk
			sprite_index = spr_pep_mapfront
		else if sprite_index = spr_pep_mapsidewalk && movespeed = 0
			sprite_index = spr_pep_mapside
	}
	if (move != 0)
	{
		xscale = move
		if movespeed < 5
			movespeed += 0.2
	}
	else
		movespeed = 0
	 if movespeed > 0
		sprite_index = spr_pep_mapsidewalk
	if vsp < 0
		sprite_index = spr_pep_mapbackwalk
	if vsp > 0
		sprite_index = spr_pep_mapfrontwalk
	if (image_index == 2 || image_index == 4)
	{
		if sprite_index = spr_pep_mapfrontwalk
			instance_create(x, (y - 16), obj_cloudeffect)
		else
			instance_create(x, y, obj_cloudeffect)
		scr_soundeffect(sfx_step)
	}
	image_speed = 0.02
}