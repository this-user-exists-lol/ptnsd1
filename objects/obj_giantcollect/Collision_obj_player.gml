scr_smalltext("1000")
if (other.object_index == obj_player1)
    global.collect += 1000
else
    global.collectN += 1000
scr_soundeffect(sfx_collectgiantpizza)
instance_destroy()

