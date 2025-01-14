function scr_player_jump() {
	if (momemtum == 0)
	    hsp = (move * movespeed)
	else
	    hsp = (xscale * movespeed)
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	if (move != xscale)
	    movespeed = 2
	move = (key_left + key_right)
	if (movespeed == 0)
	    momemtum = 0
	if scr_solid((x + hsp), y)
	{
	    movespeed = 0
	    mach2 = 0
	}
	if ((move != 0) && (movespeed < 6))
	    movespeed += 0.5
	if (movespeed > 6)
	    movespeed -= 0.1
	if ((scr_solid((x + 1), y) && (move == 1)) || (scr_solid((x - 1), y) && (move == -1)))
	    movespeed = 0
	if (dir != xscale)
	    dir = xscale
	landAnim = 1
	if ((!key_jump2) && ((jumpstop == 0) && ((vsp < 0.5) && (stompAnim == 0))))
	{
		vsp /= 10
		jumpstop = 1
	}
	if (ladderbuffer > 0)
	    ladderbuffer--
	if (scr_solid(x, (y - 1)) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
		vsp = grav
		jumpstop = 1
	}
	if ((grounded && ((input_buffer_jump < 8) && ((!key_down) && ((!key_attack) && (vsp > 0))))) && (!((sprite_index == spr_facestomp) || (sprite_index == spr_freefall))))
	{
	    scr_soundeffect(sfx_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgunjump
	    instance_create(x, y, obj_highjumpcloud2)
	    stompAnim = 0
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	    state = 58
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    movespeed = 2
	    freefallstart = 0
	}
	if ((grounded && (vsp > 0)) && (!key_attack))
	{
	    scr_soundeffect(sfx_step)
		instance_create(x, y, obj_landcloud)
	    if key_attack
	        landAnim = 0
	    input_buffer_secondjump = 0
	    state = 0
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    freefallstart = 0
	    movespeed = 2
	}
	if key_jump
	    input_buffer_jump = 0
	if key_down
	{
		sprite_index = spr_facestomp
		state = "faceslam"
	}
	if (stompAnim == 0)
	{
	    if (jumpAnim == 1)
	    {
	        if (floor(image_index) == (image_number - 1))
	            jumpAnim = 0
	    }
	    if (jumpAnim == 0)
	    {
	        if (sprite_index == spr_airdash1)
	            sprite_index = spr_airdash2
	        if (sprite_index == spr_shotgunjump)
	            sprite_index = spr_shotgunfall
	        if (sprite_index == spr_jump)
	            sprite_index = spr_fall
	        if (sprite_index == spr_player_Sjumpstart)
	            sprite_index = spr_player_Sjump
	        if (sprite_index == spr_player_shotgunjump1)
	            sprite_index = spr_player_shotgunjump2
	        if (sprite_index == spr_shotgun_shootair)
	            sprite_index = spr_shotgun_fall
	    }
	}
	if (stompAnim == 1)
	{
	    if ((sprite_index == spr_stompprep) && (floor(image_index) == (image_number - 1)))
	        sprite_index = spr_stomp
	}
	if (move != 0)
	    xscale = move
	image_speed = 0.35
	if (key_slap2 && ((suplexmove == 0) && (!((shotgunAnim == 1) && key_up))))
	{
	    suplexmove = 1
	    suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
	    state = 12
	    image_index = 0
		if key_up
			sprite_index = spr_player_slapup
		else
			sprite_index = choose(spr_player_slap1, spr_player_slap2)
	}
	if (key_slap2 && ((shotgunAnim == 1) && key_up))
	{
	    scr_soundeffect(sfx_killingblow)
	    state = 38
	    with (instance_create(x, y, obj_pistoleffect))
	        image_xscale = other.image_xscale
	    image_index = 0
	    sprite_index = spr_shotgunshoot
	    if (character == "P")
	    {
	        instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	            spdh = 4
	        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	            spdh = -4
	    }
	}
	if ((!key_attack) || (move != xscale))
	    mach2 = 0
	if (key_attack && (bumped == 0) && ((sprite_index != spr_facestomp) || (sprite_index != spr_freefall) || (sprite_index != spr_player_freefallland)))
	{
	    movespeed = 2
	    sprite_index = spr_airdash1
	    jumpAnim = 1
	    state = 70
	    image_index = 0
	}
	if bumped
		sprite_index = spr_machfreefall
	if key_taunt2
	{
	    scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = 51
	    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
	    sprite_index = spr_taunt
	    instance_create(x, y, obj_taunteffect)
	}



}
