image_speed = 0.5
//hsp = 0
//vsp = random_range(-2, -4)
//grav = 0.5
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible2
with instance_create(x, y, obj_sprite)
{
	other.spriteid = id
	depth = 2
	sprite_index = spr_treasureeffect
}
