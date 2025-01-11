if (global.panic == 0)
{
    mask_index = spr_masknull
	visible = false
}
else
{
	if instance_exists(obj_itspizzatime)
	{
		if mask_index == spr_masknull
			sprite_index = spr_escapeblockguy_appear
		visible = true
		if (floor(image_index) == (image_number - 1)) && (sprite_index == spr_escapeblockguy_appear)
		{
			mask_index = spr_escapeblockguy
			sprite_index = spr_escapeblockguy
		}
	}
	else
	{
		visible = true
		mask_index = spr_escapeblockguy
		sprite_index = spr_escapeblockguy
	}
}
