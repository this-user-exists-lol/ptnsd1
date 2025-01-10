	with (obj_player1)
	{
		if (obj_destroyableoneway.image_xscale == -xscale)
		{
		    if ((state == 70) || ((state == 91) || ((state == 37) || ((state == 18) || ((state == 2) || (state == 9))))))
		    {
		        if place_meeting((x + hsp), y, obj_destroyableoneway)
		        {
		            with (instance_place((x + hsp), y, obj_destroyableoneway))
		                instance_destroy()
		            if (state == 70)
		                machpunchAnim = 1
		        }
		    }
		    if ((state == 73) && (thrown == 1))
		    {
		        if place_meeting((x - hsp), y, obj_destroyableoneway)
		        {
		            with (instance_place((x - hsp), y, obj_destroyableoneway))
		                instance_destroy()
		        }
		    }
		    if (((state == 24) || ((state == 43) || (state == 9))) && (vsp > 0))
		    {
		        if place_meeting(x, (y + 1), obj_destroyableoneway)
		        {
		            with (instance_place(x, (y + 1), obj_destroyableoneway))
		                instance_destroy()
		        }
		    }
		    if ((vsp >= 0) && ((state == 74) || (state == 77)))
		    {
		        if place_meeting(x, ((y + vsp) + 2), obj_destroyableoneway)
		        {
		            with (instance_place(x, ((y + vsp) + 2), obj_destroyableoneway))
		            {
		                with (obj_player1)
		                {
		                    if place_meeting(x, ((y + vsp) + 2), obj_destroyableoneway)
		                    {
		                        if (shotgunAnim == 0)
		                            sprite_index = spr_bodyslamland
		                        else
		                            sprite_index = spr_shotgunjump2
		                        state = 77
		                        image_index = 0
		                    }
		                }
		                instance_destroy()
		            }
		        }
		    }
			if instance_exists(obj_slaphitbox2)
			{
			    if (state == 12)
			    {
			        with (obj_destroyableoneway)
			        {
			            if place_meeting(x, y, obj_slaphitbox2)
			            {
			                with (obj_player1)
								instance_destroy(other.id)
			            }
			        }
			    }
			}
		    with (obj_baddie)
		    {
		        if (place_meeting((x + hsp), y, obj_destroyableoneway) && (thrown == 1))
		            instance_destroy(instance_place((x + hsp), y, obj_destroyableoneway))
		        if (place_meeting(x, (y + vsp), obj_destroyableoneway) && (thrown == 1))
		            instance_destroy(instance_place((x + vsp), y, obj_destroyableoneway))
		    }
		}
	}