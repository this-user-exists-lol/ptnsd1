if ((!pause) && (!instance_exists(obj_fadeout)))
{
    if (obj_player1.key_start && ((room != rank_room) && ((room != Realtitlescreen) && (room != timesuproom))))
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}
if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout)
if (pause == 1)
{
    scr_getinput()
    application_surface_draw_enable(1)
    if (key_down2 && (selected < 2))
    {
        selected += 1
        scr_soundeffect(sfx_step)
    }
    if (key_up2 && (selected > 0))
    {
        selected -= 1
        scr_soundeffect(sfx_step)
    }
    if (key_jump && (selected == 1))
    {
        if (global.snickchallenge == 0)
        {
            if (global.currentlevel == "TOWER1")
            {
                instance_activate_all()
                room = rm_t1_intro
                scr_playerreset()
				global.goldenpizzaslices = 0
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
			else
                scr_soundeffect(sfx_enemyprojectile)
        }
    }
    if (key_jump2 && selected == 2)
    {
        if (room == hub_room1 || room == cowboytask || room == Titlescreen || room == Scootertransition)
        {
            pause = 0
            instance_activate_all()
            room = Realtitlescreen
            with (obj_player1)
            {
                character = "P"
                scr_characterspr()
            }
            scr_playerreset()
            obj_player.state = 7
            global.cowboyhat = 0
			global.goldenpizzaslices = 0
            obj_player1.targetDoor = "A"
			global.coop = 0
			if instance_exists(obj_player2)
			obj_player2.targetDoor = "A"
        }
        else
        {
            pause = 0
            instance_activate_all()
            scr_playerreset()
            obj_player.targetDoor = "A"
			global.goldenpizzaslices = 0
			global.currentlevel = "none"
            room = hub_room1
        }
    }
    if (key_jump2 && (selected == 0))
    {
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}

