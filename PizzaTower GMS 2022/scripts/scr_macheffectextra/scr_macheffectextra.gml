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