with (obj_player1)
{
	if (state == "map")
	{
		if key_jump 
		{
	        audio_stop_all()
	        backtohubstartx = x
	        backtohubstarty = y
	        backtohubroom = room
	        mach2 = 0
	        obj_camera.chargecamera = 0
			sprite_index = spr_pep_mapenterlevel
	        image_index = 0
	        state = 64
			scr_soundeffect(sfx_collectpizza)
			scr_pepsfx("good")
			obj_player1.startgate_buffer = 150
	        obj_player2.backtohubstartx = x
	        obj_player2.backtohubstarty = y
	        obj_player2.backtohubroom = room
		}
	}
    else if (key_up && (grounded && (((state == 0) || (state == 32) || ((state == 69) || ((state == 70) || (state == 91)))) && ((!instance_exists(obj_noisesatellite)) && ((!instance_exists(obj_fadeout)) && ((state != 64) && ((state != 61) && (obj_player1.spotlight == 1))))))))
    {
        audio_stop_all()
        backtohubstartx = x
        backtohubstarty = y
        backtohubroom = room
        mach2 = 0
        obj_camera.chargecamera = 0
        image_index = 0
		sprite_index = spr_entergate
        state = 64
		with instance_create(x, y, obj_doortransition)
			sprite_index = spr_doortransitionend
		global.currentlevel = other.level
        obj_player2.backtohubstartx = x
        obj_player2.backtohubstarty = y
        obj_player2.backtohubroom = room
    }
}
