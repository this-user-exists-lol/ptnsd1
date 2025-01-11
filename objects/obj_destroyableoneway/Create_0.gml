hp = 2
depth = 1
mask_index = spr_onewayhitbox_destroyable
with instance_create(x, y, obj_solid)
{
	other.solidid = id
	image_xscale = other.image_xscale
	sprite_index = sprite1033
}
