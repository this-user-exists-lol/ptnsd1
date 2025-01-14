image_xscale = playerid.xscale
x = playerid.x
y = playerid.y
if playerid.sprite_index == spr_player_slapup
	sprite_index = spr_player_hitboxslapup
else
	sprite_index = spr_swordhitbox
if ((playerid.image_index > 3) || (playerid.state != 12))
    instance_destroy()

