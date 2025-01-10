with (other.id)
{
    if (!other.savedposition)
    {
        other.savedposition = true
        other.savedx = x
        other.savedy = y
    }
    x = other.savedx
    y = other.savedy
    if (!instance_exists(obj_fadeout))
    {
        var _x = x - other.x
        var _percentage = _x / other.sprite_width
		obj_player1.vertical_x = _percentage
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
		obj_player1.vhallwaydirection = sign(other.image_yscale)
		obj_player1.verticalhall_vsp = vsp
		obj_player1.verticalhallway = 1
        other.visited = 1
        image_index = 0
	    if (state == 17)
	    {
	        verticalbuffer = 10
	        verticalstate = 17
	        var i = 0
	        x = floor(x)
	        while (!(scr_solid((x + xscale), y)))
	        {
	            x += xscale
	            i++
	            if (i > room_width)
	                break
	        }
	    }
        instance_create(x, y, obj_fadeout)
    }
}

