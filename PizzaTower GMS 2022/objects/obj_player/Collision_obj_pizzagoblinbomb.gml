if ((cutscene == 0) && ((other.grounded == 1) && ((state != 27) && ((state == 22) || (character == "S")))))
{
    bombpeptimer = 100
    state = 27
    image_index = 0
    sprite_index = spr_bombpepintro
    instance_destroy(other.id)
}
if ((hurted == 0) && (other.grounded == 0))
{
    instance_destroy(other.id)
    instance_create(x, y, obj_bombexplosion)
}

