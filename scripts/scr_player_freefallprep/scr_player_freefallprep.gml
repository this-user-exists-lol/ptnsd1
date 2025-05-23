function scr_player_freefallprep() {
	move = (key_left + key_right)
	if (!grounded)
	{
	    hsp = (move * movespeed)
	    if ((move != xscale) && ((momemtum == 1) && (movespeed != 0)))
	        movespeed -= 0.05
	    if (movespeed == 0)
	        momemtum = 0
	    if (((move == 0) && (momemtum == 0)) || scr_solid((x + hsp), y))
	    {
	        movespeed = 0
	        mach2 = 0
	    }
	    if ((move != 0) && (movespeed < 7))
	        movespeed += 0.25
	    if (movespeed > 7)
	        movespeed -= 0.05
	    if ((scr_solid((x + 1), y) && (move == 1)) || (scr_solid((x - 1), y) && (move == -1)))
	        movespeed = 0
	    if (move != 0)
	        xscale = move
		if (vsp > 15) && ((sprite_index != spr_player_hanstandjump2) && (sprite_index != spr_player_fall) && (sprite_index != spr_player_hanstandjump))
		{
		    state = 74
		    if (shotgunAnim == 0)
		        sprite_index = spr_bodyslamfall
		    else
		        sprite_index = spr_shotgunjump3
		}
	}
	if (floor(image_index) == (image_number - 1))
	{
		if (sprite_index != spr_player_hanstandjump2)
			image_speed = 0
		else
		{
			image_speed = 0.35
			if (sprite_index = spr_player_hanstandjump2)
				sprite_index = spr_player_fall
		}
	}
	else
		image_speed = 0.5
	if (grounded && ((!(input_buffer_jump < 8)) && (!place_meeting(x, (y + 1), obj_destructibles))))
	{
		if (movespeed > 5) || (sprite_index == spr_player_hanstandjump)
		{
		    grav = 0.5
			if (sprite_index == spr_player_hanstandjump)
				sprite_index = spr_player_backslidestart
			else
				sprite_index = spr_crouchslip
		    machhitAnim = 0
		    state = 68
		    movespeed = 15
		}
		else
		{
			if (sprite_index != spr_player_hanstandjump2) && (sprite_index != spr_player_fall)
			{
			    scr_soundeffect(sfx_groundpound)
			    freefallsmash = 0
			    if (shotgunAnim == 0)
			        sprite_index = spr_bodyslamland
			    else
			        sprite_index = spr_shotgunjump2
			    image_index = 0
			    state = 77
			    jumpAnim = 1
			    jumpstop = 0
			    with (obj_baddie)
			    {
			        if (grounded && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0))))
			        {
			            vsp = -11
			            hsp = 0
			        }
			    }
			    with (obj_camera)
			    {
			        shake_mag = 10
			        shake_mag_acc = (30 / room_speed)
			    }
			    combo = 0
			    bounce = 0
			    instance_create(x, y, obj_landcloud)
			    freefallstart = 0
			}
			else
			{
				vsp = 0
				jumpAnim = 1
				jumpstop = 0
				state = 0
				instance_create(x, y, obj_landcloud)
			}
		}
	}


}
