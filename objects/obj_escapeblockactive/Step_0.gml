if (global.panic == 0)
{
	visible = true
    mask_index = spr_escapeblockguy
}
else
{
	if instance_exists(obj_itspizzatime)
	{
		if (mask_index == spr_escapeblockguy)
		{
			if audio_is_playing(sfx_killenemy)
			    audio_stop_sound(sfx_killenemy)
			scr_soundeffect(sfx_killenemy)
			with instance_create(x, y, obj_sausageman_dead)
			sprite_index = spr_escapeblockguy_dead
		}
		visible = false
		mask_index = spr_masknull
		sprite_index = spr_escapeblockguy_eeping
	}
	else
	{
		visible = false
		mask_index = spr_masknull
		sprite_index = spr_escapeblockguy_eeping
	}
}

