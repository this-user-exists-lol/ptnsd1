function scr_player_finishingblow() {
	hsp = (xscale * movespeed)
	if (movespeed > 0)
	    movespeed -= 0.5
	if (floor(image_index) == (image_number - 1))
	    state = 0
	if !instance_exists(obj_swordhitbox)
	{
		scr_soundeffect(sfx_punch)
		scr_soundeffect(sfx_killingblow)
	}
	with (instance_create(x, y, obj_swordhitbox))
	   playerid = other.object_index
	image_speed = 0.35
	landAnim = 0



}
