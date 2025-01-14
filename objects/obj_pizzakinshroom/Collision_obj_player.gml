if ((obj_player.state != 73) && (global.shroomfollow == 0))
{
	scr_soundeffect(sfx_collecttoppin)
	sprite_index = spr_toppinshroom_intro
    global.combotime = 60
    global.collect = 1000
	scr_smalltext("1000")
	scr_pepsfx("good")
    ds_list_add(global.saveroom, id)
    if (global.toppintotal < 5)
        obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
    if (global.toppintotal == 5)
        obj_tv.message = "YOU HAVE ALL TOPPINS!"
    obj_tv.showtext = 1
    obj_tv.alarm[0] = 150
    global.toppintotal += 1
    global.shroomfollow = 1
    panic = 0
}

