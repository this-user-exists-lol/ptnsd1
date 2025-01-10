with (obj_player)
{
    if ((state == 24) || (state == 25))
    {
        with (instance_create(x, y, obj_knightdebris))
            image_index = 0
        with (instance_create(x, y, obj_knightdebris))
            image_index = 1
        with (instance_create(x, y, obj_knightdebris))
            image_index = 2
        with (instance_create(x, y, obj_knightdebris))
            image_index = 3
        with (instance_create(x, y, obj_knightdebris))
            image_index = 4
        with (instance_create(x, y, obj_knightdebris))
            image_index = 5
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
        else
            obj_player.hsp = 5
        vsp = -3
        image_index = 0
        obj_player.image_index = 0
        obj_player.flash = 1
        state = 72
    }
    else if ((state == 27) && (hurted == 0))
        instance_create(x, y, obj_bombexplosion)
    else if ((state != 73) && ((hurted == 0) && ((cutscene == 0) && ((state != 72) && ((state != 91) && (state != 22))))))
    {
        if (global.collect > 20)
        {
            global.collect -= 20
            with (instance_create(x, y, obj_pizzaloss))
            {
                hsp = (-obj_player.xscale)
                vsp = random_range(-3, -6)
            }
            with (instance_create(x, y, obj_pizzaloss))
            {
                hsp = (-obj_player.xscale)
                vsp = random_range(-3, -6)
            }
        }
        if (global.collect == 10)
        {
            global.collect -= 10
            with (instance_create(x, y, obj_pizzaloss))
            {
                hsp = (-obj_player.xscale)
                vsp = random_range(-3, -6)
            }
        }
        scr_sound(sound_touchspike)
        alarm[8] = 60
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_player_jumphurt
        else
            sprite_index = spr_player_hurt
        movespeed = 8
        vsp = -5
        instance_create(x, y, obj_spikehurteffect)
        state = 73
        image_index = 0
        flash = 1
    }
}
if ((obj_player.state == 91) || (obj_player.state == 22))
    instance_destroy()

