
if (image_xscale < 60)
{
	if sprite_index == spr_doortransitionend
	{
	    image_xscale += 1
		image_yscale += 1
	}
	else
	{
	    image_xscale += 2
		image_yscale += 2
	}
}
else if sprite_index != spr_doortransitionend
	instance_create(x, y, obj_fadeout)

