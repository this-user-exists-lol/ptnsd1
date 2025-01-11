if wgravity = 1
{
	if (vsp < 12)
	    vsp += grav
	if grounded
	{
		vsp = 0
		hsp = 0
	}
	scr_collide()
}
inv_frame -= 1
if place_meeting(x, y, obj_metalblock)
	visible = false
else
	visible = true