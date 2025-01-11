if ((global.panic == 0) && (global.snickchallenge == 0))
{
    if instance_exists(obj_pepperman)
    {
        audio_group_stop_all(mus)
        scr_sound(mu_chase)
    }
    var roomname = room_get_name(room)
    if (room == characterselect)
    {
        if (!audio_is_playing(mu_characterselect))
        {
            audio_group_stop_all(mus)
            scr_sound(mu_characterselect)
            pausedmusic = mu_characterselect
        }
    }
    if ((string_letters(roomname) == "Realtitlescreen") || (string_letters(roomname) == "Realtitlescreen"))
    {
        if (!audio_is_playing(mu_title))
        {
            audio_group_stop_all(mus)
            scr_sound(mu_title)
            pausedmusic = mu_title
        }
    }
    if ((string_letters(roomname) == "hubroom") || ((string_letters(roomname) == "Titlescreen") || (string_letters(roomname) == "halloweenentrance")))
    {
        if (!audio_is_playing(mu_hub))
        {
            audio_group_stop_all(mus)
            scr_sound(mu_hub)
            pausedmusic = mu_hub
        }
    }
    if (string_letters(roomname) == "map")
    {
        if (!audio_is_playing(mu_worldmap))
        {
            audio_group_stop_all(mus)
            scr_sound(mu_worldmap)
            pausedmusic = mu_worldmap
        }
    }
    if ((string_letters(roomname) == "PProom") || (string_letters(roomname) == "PProom"))
    {
        if (!audio_is_playing(mu_tutorial))
        {
            audio_group_stop_all(mus)
            scr_sound(mu_tutorial)
            pausedmusic = mu_tutorial
        }
    }
    if (global.currentlevel == "TOWER1")
    {
        for (i = 0; i < 20; i++)
        {
            if ((roomname == ("rm_t1_" + string(i))) && (i <= 10) || (roomname == ("rm_t1_intro")))
            {
                if (!audio_is_playing(mu_ancientA))
                {
                    audio_group_stop_all(mus)
                    scr_sound(mu_ancientA)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_ancientA
                }
            }
		}
    }
}

