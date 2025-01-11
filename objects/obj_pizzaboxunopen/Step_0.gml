if (place_meeting(x, y, obj_player) && (sprite_index == spr_pizzaboxunopen))
{
	scr_soundeffect(sfx_loseknight)
	instance_create(x, y, obj_bangeffect)
	if (content == obj_pizzakinshroom) || (content == obj_pizzakincheese) || (content == obj_pizzakintomato) || (content == obj_pizzakinsausage) || (content == obj_pizzakinpineapple)
    {
		scr_soundeffect(sfx_collecttoppin)
		scr_smalltext("1000")
        instance_create(x, y, obj_taunteffect)
        with (instance_create(x, (y - 25), content))
		{
		  var sprite_collected = "spr_toppin" + string(toppinname) + "_intro"
		  sprite_index = asset_get_index(sprite_collected)
		}
        if (global.toppintotal < 5)
			scr_tvtext((("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!"), 150)
        if (global.toppintotal == 5)
            scr_tvtext("YOU HAVE ALL TOPPINS!", 150)
		global.toppintotal += 1
		global.collect += 1000
		switch content
		{
			case obj_pizzakinshroom:
				global.shroomfollow = 1
			break
			case obj_pizzakincheese:
				global.cheesefollow = 1
			break
			case obj_pizzakintomato:
				global.tomatofollow = 1
			break
			case obj_pizzakinsausage:
				global.sausagefollow = 1
			break
			case obj_pizzakinpineapple:
				global.pineapplefollow = 1
			break
		}
    }
	else
		(instance_create(x, (y - 25), content))
    sprite_index = spr_pizzaboxopen
}
if ((sprite_index == spr_pizzaboxopen) && (floor(image_index) == 16))
    instance_destroy()
