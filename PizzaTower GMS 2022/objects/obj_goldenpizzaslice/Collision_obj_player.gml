with obj_player1  
{
	instance_destroy(other.id)
	ds_list_add(global.saveroom, id)
	instance_destroy(other.spriteid)
	global.goldenpizzaslices++
	key_particles = 1
	alarm[7] = 30
	scr_soundeffect(sfx_pointboost)
	scr_tvtext("YOU GOT" + (" " + string(global.goldenpizzaslices) + " ") + "GOLDEN PIZZA SLICE OUT OF 3!", 250)
}