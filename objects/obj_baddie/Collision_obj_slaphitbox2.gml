if (grounded)
{
	scr_soundeffect(sfx_stompenemy)
	instance_create(x, y, obj_bumpeffect)
    instance_create(x, y, obj_slapstar)
    with (instance_create(x, y, obj_spikehurteffect))
        other.image_xscale = image_xscale
	with obj_slaphitbox2
		touchenemy += 1
	if (stunned < 100)
		stunned = 100
	if image_xscale == obj_player.xscale
		image_xscale = -obj_player.xscale
	vsp = -3
	hsp = ((-image_xscale) * 3)
	state = states.stun
	image_index = 0
	hp -= 1
	if hp = 0
		flash = 1
}