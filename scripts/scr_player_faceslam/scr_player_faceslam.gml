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
		if key_jump
		    input_buffer_jump = 0
		if (fallinganimation >= 80)
		{
			if sprite_index != spr_freefall
				scr_soundeffect(sfx_superjumpboost)	
			vsp += 0.1
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
		if ((sprite_index = spr_freefall) && (!instance_exists(spriteid)))
		{
		    with (instance_create(x, y, obj_sprite))
			{
		        other.spriteid = id
				sprite_index = spr_fastfalleffect
				animend = 1
			}
		}
		if (fallinganimation >= 0)
		{
			if (sprite_index = spr_facestomp)
			{
				if (place_meeting(x, (y + 1), obj_destructibles))
				{
					vsp = -5
					sprite_index = spr_player_facestomphit
					fallinganimation = 0
					with (instance_place(x, (y + 32), obj_destructibles))
						instance_destroy()
				}
			}
		}
		if (grounded && (((!place_meeting(x, (y + 1), obj_destructibles)) || !place_meeting(x, (y + 1), obj_metalblock)) && (vsp > 0)))
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
				if (vsp > 0) && (input_buffer_jump < 8) && (!place_meeting(x, (y + 64), obj_metalblock))
				{
					image_index = 0
					state = 58
					vsp = -15
					jumpAnim = 1
					bumped = 2
					sprite_index = spr_player_hanstandjump2
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
					with instance_create(x, y, obj_pogoeffect)
						sprite_index = spr_groundpoundlandeffect
					audio_stop_sound(sfx_superjumpboost)
					scr_soundeffect(sfx_groundpound)
					image_index = 0
					sprite_index = spr_player_freefallland
					state = 77
				}
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