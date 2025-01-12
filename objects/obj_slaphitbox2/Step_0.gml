image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if obj_player.sprite_index == spr_player_slapup
	sprite_index = spr_player_hitboxslapup
else
	sprite_index = spr_swordhitbox
if (obj_player.image_index > 3 || obj_player.state != states.slap)
    instance_destroy()
