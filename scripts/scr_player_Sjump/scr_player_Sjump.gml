function scr_player_Sjump() {
	hsp = 0
	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	if superjumpspeed > -50
		superjumpspeed--
	crouchAnim = 0
	machhitAnim = 0
	if (sprite_index == spr_superjump)
	    vsp = superjumpspeed
	if (sprite_index == spr_player_supersidejump)
	{
	    if (a < 25)
	        a++
	    hsp = (xscale * a)
	    vsp = 0
	}
	if (!instance_exists(spriteid))
	{
	    with (instance_create(x, y, obj_sprite))
		{
	        other.spriteid = id
			sprite_index = spr_fastfalleffect
			animend = 1
		}
	}
	if (scr_solid(x, (y - 1)) && (!place_meeting(x, (y - 1), obj_destructibles)))
	{
	    a = 0
	    if (sprite_index == spr_player_supersidejump)
	        sprite_index = spr_player_supersidejumpland
	    if (sprite_index == spr_superjump)
	        sprite_index = spr_superjumpland
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            image_index = 0
	            if grounded
	                vsp = -7
	        }
	    }
	    scr_soundeffect(sfx_groundpound)
	    image_index = 0
	    state = 93
	    machhitAnim = 0
	}
	image_speed = 0.5
	scr_collide_player()



}
