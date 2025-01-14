if inv_frame < 0
{
	scr_smalltext("100", 0)
	global.collect += 100
	scr_soundeffect(sfx_bigpointboost)
	scr_soundeffect(sfx_collectpizza)
	scr_pepsfx("good")
	instance_destroy()
}

