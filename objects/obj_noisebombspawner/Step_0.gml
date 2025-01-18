if ((floor(image_index) == 2) && (canthrowbomb == 1))
{
    with (instance_create((x + (image_xscale * 10)), (y - 20), obj_pizzagoblinbomb))
    {
        hsp = (other.image_xscale * 4)
        drop = 1
        vsp = -5
		countdown = other.bombcontdown
    }
    canthrowbomb = 0
}
if ((floor(image_index) == (image_number - 1)) && (canthrowbomb == 0))
    image_speed = 0
else
    image_speed = 0.35
if ((!instance_exists(obj_pizzagoblinbomb)) && (obj_player.state != 27) && (distance_to_object(obj_player) < 200))
    canthrowbomb = 1
else
    canthrowbomb = 0

