function scr_macheffectextra(argument0)
{
	if argument0 = 2
	{
		with (instance_create(x, y, obj_mach3effectextra))
			hspeed = -5
		with (instance_create(x, y, obj_mach3effectextra))
			hspeed = 5
	}
	else if argument0 = 1
	{
		with (instance_create(x, y, obj_mach3effectextra))
			vspeed = -5
		with (instance_create(x, y, obj_mach3effectextra))
			vspeed = 5
	}
}
function scr_smalltext(argument0, argument1)
{
	with (instance_create(x, y, obj_smallnumber))
	{
		number = argument0
		negative = argument1
	}
}
function scr_destroyabledebris(argument0, argument1, argument2){
	repeat (argument1)
	{
		with (instance_create((x + argument2 * image_xscale), (y + argument2), obj_debris))
	        sprite_index = argument0
	}

}
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
function scr_tvtext(argument0, argument1)
{
	obj_tv.message = argument0
	obj_tv.showtext = 1
	obj_tv.alarm[0] = argument1
}
function animation_end(ind = sprite_index, img = image_index,  i_end = sprite_get_number(ind), i_spd = image_speed)
{
    return (img + (i_spd) * sprite_get_speed(ind) >= i_end);    
}
//vamp made this animation_end fucntion btw
//well at least she edited it from mr unown which he stole from the gamemaker discord lolz