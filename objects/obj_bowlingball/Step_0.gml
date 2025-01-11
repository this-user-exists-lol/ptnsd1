if (((obj_player.x > (x - 8)) && (obj_player.x < (x + 8))) && (((obj_player.y > y) && (obj_player.y < (y + 200))) && (falling == 0)))
{
    vsp = 0
    falling = 1
	with instance_create(x, y, obj_sprite)
		sprite_index = spr_bowlingballonaropedebris
}
if (falling == 1)
{
    sprite_index = spr_bowlingballonaropefall
    y += floor(vsp)
    if (vsp < 10)
        vsp += grav
}
mask_index = spr_bowlingballonaropehitbox
