global.goldenpizzaslices++
with obj_player1  
{
	key_particles = 1
	alarm[7] = 30
}
scr_soundeffect(sfx_pointboost)
scr_tvtext("YOU GOT" + (" " + string(global.goldenpizzaslices) + " ") + "GOLDEN PIZZA SLICE OUT OF 3!", 250)
instance_destroy()
instance_destroy(spriteid)