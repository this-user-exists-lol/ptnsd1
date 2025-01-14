if ((falling == 1) && (vsp > 0))
{
    instance_create(x, y, obj_bangeffect)
	scr_soundeffect(sfx_groundpound)
    obj_player.image_index = 0
    obj_player.state = 31
	obj_player.sprite_index = obj_player1.spr_stunned
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
	with instance_create(x, y, obj_sausageman_dead)
		sprite_index = spr_bowlingballfalling
	instance_destroy()
}

