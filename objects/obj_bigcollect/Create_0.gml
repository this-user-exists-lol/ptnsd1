wgravity = 1
inv_frame = -1
sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
image_speed = 0.35
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible2
if wgravity = 1
{
	hsp = 5 * obj_player1.xscale
	vsp = -5
	inv_frame = 10
	grav = 0.5
	grounded = 0
}
