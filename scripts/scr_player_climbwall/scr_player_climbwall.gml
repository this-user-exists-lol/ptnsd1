function scr_player_climbwall() {
	if (windingAnim < 200)
	    windingAnim++
	move = (key_left + key_right)
	suplexmove = 0
	vsp = (-wallspeed)
	if ((wallspeed < 24) && (move == xscale))
	    wallspeed -= 0.25
	crouchslideAnim = 1
	if (wallspeed < 5)
		sprite_index = spr_player_climbwallabouttofalloff
	else
		sprite_index = spr_machclimbwall
	if (!key_attack)
	{
	    state = 58
		vsp = -wallspeed
	    sprite_index = spr_machfreefall
	}
	if (scr_solid(x, (y - 1)) && ((!place_meeting(x, (y - 1), obj_destructibles)) && ((!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x - sign(hsp)), y, obj_slope)))))
	{
	    sprite_index = spr_superjumpland
	    scr_soundeffect(sfx_groundpound)
	    image_index = 0
	    state = 93
	    machhitAnim = 0
	}
	if (!scr_solid((x + xscale), y))
	{
	    instance_create(x, y, obj_jumpdust)
	    vsp = 7
		x += 5 * xscale
	    state = 70
	}
	if key_jump
	{
	    movespeed = 8
	    state = 70
	    image_index = 0
	    sprite_index = spr_walljumpstart
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	    xscale *= -1
	    jumpstop = 0
	}
	if (wallspeed <= 1)
	{
	    state = 58
	    sprite_index = spr_machfreefall
	}
	image_speed = 0.6
	if (!instance_exists(obj_cloudeffect))
	    instance_create(x, (y + 43), obj_cloudeffect)



}
