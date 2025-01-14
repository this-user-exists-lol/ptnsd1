scr_collide()
if grounded
	vsp = -5
inv_frame--
if inv_frame < 0
	instance_destroy()
if place_meeting((x + 1), y, obj_solid)
	hsp = -hsp - 2
if place_meeting((x - 1), y, obj_solid)
	hsp = hsp + 2
