function scr_player_crouchslide() {
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	if (movespeed >= 0) && ((sprite_index == spr_crouchslip) || (sprite_index == spr_player_backslide))
	    movespeed -= 0.2
	mask_index = spr_crouchmask
	if (sprite_index == spr_crouchslip) && (!grounded)
		sprite_index = spr_player_crouchslipfall
	else if (sprite_index == spr_player_crouchslipfall) && (grounded)
		sprite_index = spr_crouchslip
	if ((movespeed >= 5) && (((!scr_solid((x + 27), (y - 32))) && ((!scr_solid((x - 27), (y - 32))) && ((!scr_solid(x, (y - 32))) && ((!scr_solid(x, (y - 16)))))))))
	{
		if (!key_down)
		{
		    if (character == "P")
		        sprite_index = spr_rollgetup
			image_index = 0
		    state = 70
			movespeed = 10
		}
		else if (key_jump)
		{
		    sprite_index = spr_mach2jump
			image_index = 0
		    state = 70
			vsp = -13
			movespeed = 12
		}
	}
	if ((((hsp == 0) || ((scr_solid((x + 1), y) && (xscale == 1)) || (scr_solid((x - 1), y) && (xscale == -1)))) && (!place_meeting((x + sign(hsp)), y, obj_slope))) || (movespeed <= 0))
	{
	    state = 66
	    movespeed = 0
	    mach2 = 0
	    crouchslideAnim = 1
	    image_index = 0
	    crouchAnim = 1
	    start_running = 1
	    alarm[4] = 14
	}
	if ((scr_solid((x + 1), y) && (xscale == 1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
	{
	    movespeed = 0
	    state = 72
	    mach2 = 0
	    image_index = 0
	    machslideAnim = 1
	    machhitAnim = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if ((scr_solid((x - 1), y) && (xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
	{
	    movespeed = 0
	    state = 72
	    mach2 = 0
	    image_index = 0
	    machslideAnim = 1
	    machhitAnim = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	if ((!instance_exists(obj_slidecloud)) && (grounded && (movespeed > 5)))
	{
	    with (instance_create(x, y, obj_slidecloud))
	        image_xscale = other.xscale
	}
	if (floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_backslidestart)
		sprite_index = spr_player_backslide
	if (sprite_index != spr_player_backslidestart)
		image_speed = movespeed / 20
	else
		image_speed = 0.35



}
