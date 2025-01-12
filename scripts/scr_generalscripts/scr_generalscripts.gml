function scr_destroyabledebris(argument0, argument1, argument2){
	repeat (argument1)
	{
		with (instance_create((x + argument2 * image_xscale), (y + argument2), obj_debris))
	        sprite_index = argument0
	}

}
function scr_tvtext(argument0, argument1)
{
	obj_tv.message = argument0
	obj_tv.showtext = 1
	obj_tv.alarm[0] = argument1
}
function scr_smalltext(argument0)
{
	with (instance_create(x, y, obj_smallnumber))
		number = argument0
}