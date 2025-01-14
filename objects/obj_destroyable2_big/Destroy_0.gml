if ((ds_list_find_index(global.saveroom, id) == -1) && (global.snickchallenge == 0))
{
	scr_destroyabledebris(spr_bigpizzadebris, 6, 32)
    with (instance_create((x + 32), (y + 32), obj_bigcollect))
    {
        hsp = 2 * obj_player.xscale
		vsp = -2
		inv_frame = 5
    }
    tile_layer_delete_at(1, x, y)
    tile_layer_delete_at(1, (x + 32), y)
    tile_layer_delete_at(1, (x + 32), (y + 32))
    tile_layer_delete_at(1, x, (y + 32))
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}

