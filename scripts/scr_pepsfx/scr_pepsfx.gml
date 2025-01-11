function scr_pepsfx(argument0)
{
	var voice = random_range(1, 100)
	if (voice >= 45)
	{
		if argument0 = "good"
			scr_soundeffect(choose(sfx_pepcheer1, sfx_pepcheer2))
		else if argument0 = "bad"
			scr_soundeffect(choose(sfx_pepdamage1, sfx_pepdamage2))
	}
}