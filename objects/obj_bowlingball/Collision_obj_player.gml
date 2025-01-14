if ((falling == 1) && (vsp > 0))
{
	scr_soundeffect(sfx_pepdamage2)
    instance_create(x, y, obj_bangeffect)
	scr_soundeffect(sfx_groundpound)
    obj_player.image_index = 0
    obj_player.state = 31
	obj_player.sprite_index = obj_player1.spr_stunned
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
	scr_smalltext("-100", 1)
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
	with instance_create(x, y, obj_sausageman_dead)
		sprite_index = spr_bowlingballfalling
	instance_destroy()
}

