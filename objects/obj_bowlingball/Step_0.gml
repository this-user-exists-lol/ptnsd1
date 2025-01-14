if (((obj_player.x > (x - 8)) && (obj_player.x < (x + 8))) && (((obj_player.y > y) && (obj_player.y < (y + 350))) && (falling == 0)))
{
    vsp = 10
    falling = 1
	with instance_create(x, y, obj_sprite)
		sprite_index = spr_bowlingballonaropedebris
}
if (falling == 1)
{
    sprite_index = spr_bowlingballonaropefall
    y += floor(vsp)
    if (vsp < 25)
        vsp += grav
}
mask_index = spr_bowlingballonaropehitbox
if scr_solid(x, y)
{
	instance_destroy()
	scr_destroyabledebris(spr_bombdebris, 4, 0)
	scr_soundeffect(sfx_groundpound)
	with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
}
