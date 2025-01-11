function scr_player_faceslam(){
	{
		if (momemtum == 0)
		    hsp = (move * movespeed)
		else
		    hsp = (xscale * movespeed)
		if (dir != xscale)
		{
		    dir = xscale
		    movespeed = 2
		    facehurt = 0
		}
		if (move != xscale)
		    movespeed = 2
		move = (key_left + key_right)
		if (movespeed == 0)
		    momemtum = 0
		if scr_solid((x + hsp), y)
		{
		    movespeed = 0
		    mach2 = 0
		}
		if ((move != 0) && (movespeed < 6))
		    movespeed += 0.5
		if (movespeed > 6)
		    movespeed -= 0.1
		if ((scr_solid((x + 1), y) && (move == 1)) || (scr_solid((x - 1), y) && (move == -1)))
		    movespeed = 0
		if (dir != xscale)
		    dir = xscale
		if (move != 0)
			xscale = move
		if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_facestomphit))
		    sprite_index = spr_facestomp
		if (fallinganimation >= 80)
		{
			vsp += 0.5
		    sprite_index = spr_freefall
		}
		if ((sprite_index = spr_freefall) && (!instance_exists(superslameffectid)))
		{
		    with (instance_create(x, (y + 32), obj_superslameffect))
		    {
		        playerid = other.object_index
		        other.superslameffectid = id
		    }
		}
		if (fallinganimation >= 40)
		{
			if (sprite_index = spr_facestomp)
			{
				if (place_meeting(x, (y + 1), obj_destructibles))
				{
					vsp = -5
					sprite_index = spr_player_facestomphit
					with (instance_place(x, (y + 32), obj_destructibles))
						instance_destroy()
				}
			}
			if (sprite_index = spr_freefall)
			{
				with (instance_place(x, (y + 64), obj_destructibles))
					instance_destroy()
				with (instance_place(x, (y + 1), obj_metalblock))
			             instance_destroy()
			}
		}
		if (grounded) && (!place_meeting(x, (y + 64 + vsp), obj_destructibles) && (!place_meeting(x, (y + 64 + vsp), obj_metalblock)))
		{
			if scr_slope()
			{
				movespeed = fallinganimation / 5
			    with (instance_place((x + xscale), (y + 1), obj_slope))
			        other.xscale = (-sign(image_xscale))
			    state = 37
			    sprite_index = spr_crouchslip
			}
			else
			{
				with (obj_baddie)
				{
					if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
					{
						vsp = -7
						hsp = 0
						stunned = 100
					}
				}
				with (obj_camera)
				{
					shake_mag = 10
					shake_mag_acc = (30 / room_speed)
				}
				instance_create(x, (y - 64), obj_pogoeffect)
				scr_soundeffect(sfx_groundpound)
				image_index = 0
				sprite_index = spr_player_freefallland
				state = 77
			}
		}
		fallinganimation += 3
		if (!key_down) && (fallinganimation <= 40)
		{
			sprite_index = spr_player_fall
			fallinganimation = 0
			state = 58
		}
	}
}