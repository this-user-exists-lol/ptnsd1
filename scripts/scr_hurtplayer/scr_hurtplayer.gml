function scr_hurtplayer(argument0) {
	with (argument0)
	{
	    if (((state == 24) || ((state == 25) || (state == 18))) && (cutscene == 0))
	    {
	    }
	    else if ((state == 27) && (hurted == 0))
	    {
	    }
	    else if (state == 15)
	    {
	    }
	    else if (state == 2)
	    {
	    }
	    else if ((state == 13) || (state == 14))
	    {
	    }
	    else if ((state != 73) && ((hurted == 0) && (cutscene == 0)))
	    {
	        scr_soundeffect(sfx_pephurt)
			scr_pepsfx("bad")
	        alarm[8] = 60
	        alarm[7] = 120
	        hurted = 1
	        if (xscale == other.image_xscale)
	            sprite_index = spr_hurtjump
	        else
	            sprite_index = spr_hurt
			var hurtdir = choose(1,-1)
			xscale = hurtdir
	        movespeed = random_range(3, 7)
	        vsp = -5
	        timeuntilhpback = 300
	        instance_create(x, y, obj_spikehurteffect)
			instance_create(x, y, obj_bangeffect)
			repeat (5)
				instance_create(x, y, obj_slapstar)
	        state = 73
	        image_index = 0
	        flash = 1
	        if (shotgunAnim == 0)
	        {
	            global.hurtcounter += 1
	            if (global.collect > 100)
	                global.collect -= 100
	            else
	                global.collect = 0
	            if (global.collect != 0)
	            {
	                repeat (10)
	                {
	                    with (instance_create(x, y, obj_pizzaloss))
	                        sprite_index = choose(spr_xmastopping1, spr_xmastopping2, spr_xmastopping3, spr_xmastopping4, spr_xmastopping5)
	                }
	            }
	        }
	        else
	        {
	            with (instance_create(x, y, obj_sausageman_dead))
	            {
	                if (obj_player1.character == "P")
	                    sprite_index = spr_shotgunback
	                else if (obj_player1.character == "N")
	                    sprite_index = spr_minigunfall
	            }
	            if (backupweapon == 1)
	                backupweapon = 0
	            else
	                shotgunAnim = 0
	        }
	    }
	}



}
