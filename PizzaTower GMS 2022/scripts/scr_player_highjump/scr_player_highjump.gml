function scr_player_highjump() {
	hsp = 0
	vsp = 0
	if key_up
	{
		if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_Sjumpprep))
			image_speed = 0
		else
			image_speed = 0.35
		if ((key_jump) && (sprite_index == spr_player_Sjumpprep))
		{
			with (instance_create(x, y, obj_highjumpcloud1))
				image_xscale = other.xscale
			scr_soundeffect(sfx_highjump)
			state = 58
			vsp = -15
			jumpAnim = 0
			sprite_index = spr_player_Sjumpstart
			image_index = 0
		}
	}
	else
		state = 0

}
