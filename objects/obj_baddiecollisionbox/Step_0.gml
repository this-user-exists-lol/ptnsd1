if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (instance_exists(baddieID) && (place_meeting(x, y, obj_player1) && ((obj_player1.cutscene == 0) && (obj_player1.state != 7))))
{
    if (baddieID.state != 109)
    {
        with (obj_player1)
        {
            if (instakillmove == 1)
            {
				scr_macheffectextra(1)
                if ((state == 91) && (sprite_index != spr_mach3hit))
                {
                    if (fightball == 0)
                        sprite_index = spr_mach3hit
                    image_index = 0
                }
                if ((state == 70) && grounded)
                {
                    machpunchAnim = 1
                    image_index = 0
                }
			
                other.baddieID.grabbedby = 1
                instance_destroy(other.baddieID)
                instance_destroy(other.id)
                global.hit += 1
                global.combotime = 60
				scr_soundeffect(sfx_punch)
                if ((!grounded) && ((state != 74)))
                {
					if (state == "faceslam")
					{
						vsp = -5
						sprite_index = spr_player_facestomphit
					}
					else
					{
	                    if ((state == 70) || ((state == 91) && (fightball == 0)))
	                        sprite_index = spr_mach2jump
	                    suplexmove = 0
	                    vsp = -11
					}
                }
            }
            if (instance_exists(other.baddieID) && ((y < other.baddieID.y) && ((attacking == 0) && ((sprite_index != spr_player_mach2jump) && (((state == 58) || ((state == 69) || (state == 46))) && (other.baddieID.hp > 0) && ((vsp > 0) && ((other.baddieID.vsp >= 0) && (sprite_index != spr_stompprep))))))))
            {
                scr_soundeffect(sfx_stompenemy)
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                image_index = 0
                other.baddieID.state = 106
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
				vsp = -3
				hsp = -3
                instance_create(x, (y + 50), obj_stompeffect)
                stompAnim = 1
                other.baddieID.image_index = 0
				if key_jump2
					vsp = -14
				else
					vsp = -9
                if (state != 46)
                    sprite_index = spr_stompprep
            }
        }
    }
}
with (obj_player1)
{
	if (instance_exists(other.baddieID) && (other.baddieID.hp < 1))
	{
		if instance_exists(obj_slaphitbox2)
		{
			if (obj_slaphitbox2.touchenemy == 1)
			{
				if (shotgunAnim == 0)
				{
					movespeed = 0
					image_index = 0
					sprite_index = spr_haulingstart
					state = 46
					other.baddieID.state = 109
					other.baddieID.grabbedby = 1
				}
				else
				{
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
					other.baddieID.grabbedby = 1
					instance_destroy(other.baddieID)
					instance_destroy(other.id)
					global.hit += 1
					global.combotime = 60
				}
			}
			else if obj_slaphitbox2.touchenemy > 1
				obj_slaphitbox2.touchenemy -= 1
		}
	}
}