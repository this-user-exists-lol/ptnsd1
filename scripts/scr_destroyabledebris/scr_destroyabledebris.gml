function scr_destroyabledebris(argument0, argument1, argument2){
	repeat (argument1)
	{
		with (instance_create((x + argument2 * image_xscale), (y + argument2), obj_debris))
	        sprite_index = argument0
	}

}
//clarification:
//argument0 = sprite of debris
//argument1 = amount of debris
//argument2 = offset of debris