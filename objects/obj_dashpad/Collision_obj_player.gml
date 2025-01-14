with (obj_player)
{
    if (grounded && ((state == 69) || (state == 70)))
    {
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        flash = 1
        sprite_index = spr_player_mach4boost
        instance_create(x, y, obj_jumpdust)
		scr_soundeffect(sfx_machburstofspeed)
		scr_macheffectextra(1)
        movespeed = 14
    }
    if (grounded && (state == 91))
    {
        flash = 1
        if (movespeed < 14)
            movespeed = 14
        instance_create(x, y, obj_jumpdust)
    }
}

