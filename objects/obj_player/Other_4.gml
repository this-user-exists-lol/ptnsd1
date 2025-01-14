if (object_index == obj_player1)
{
    if (global.coop == 1)
        scr_changetoppings()
    if (state == 46)
        state = 0
    if ((object_index == obj_player2) && ((obj_player1.spotlight == 1) && (global.coop == 1)))
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if ((object_index == obj_player1) && (obj_player1.spotlight == 0))
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if ((object_index != obj_player2) || (global.coop == 1))
    {
        if (targetDoor == "A")
        {
            if (hallway == 1)
                x = (obj_doorA.x + (hallwaydirection * 100))
            else if (box == 1)
                x = (obj_doorA.x + 32)
            else
                x = (obj_doorA.x + 16)
            y = (obj_doorA.y - 14)
        }
        if (targetDoor == "B")
        {
            if (hallway == 1)
                x = (obj_doorB.x + (hallwaydirection * 100))
            else if (box == 1)
                x = (obj_doorB.x + 32)
            else
                x = (obj_doorB.x + 16)
            y = (obj_doorB.y - 14)
        }
        if (targetDoor == "C")
        {
            if (hallway == 1)
                x = (obj_doorC.x + (hallwaydirection * 100))
            else if (box == 1)
                x = (obj_doorC.x + 32)
            else
                x = (obj_doorC.x + 16)
            y = (obj_doorC.y - 14)
        }
        if (targetDoor == "D")
        {
            if (hallway == 1)
                x = (obj_doorD.x + (hallwaydirection * 100))
            else if (box == 1)
                x = (obj_doorD.x + 32)
            else
                x = (obj_doorD.x + 16)
            y = (obj_doorD.y - 14)
        }
        if (targetDoor == "E")
        {
            if (hallway == 1)
                x = (obj_doorE.x + (hallwaydirection * 100))
            else if (box == 1)
                x = (obj_doorE.x + 32)
            else
                x = (obj_doorE.x + 16)
            y = (obj_doorE.y - 14)
        }
		if verticalhallway
		{
		    verticalbuffer = 2
		    var _vinst = noone
		    with (obj_verticalhallway)
		    {
		        event_perform(ev_step, ev_step_normal)
		        if (targetDoor == other.targetDoor)
		            _vinst = id
		    }
		    if (_vinst != noone)
		    {
		        x = _vinst.x + _vinst.sprite_width * vertical_x
		        var bbox_size = abs(bbox_right - bbox_left)
		        x = clamp(x, (_vinst.x + bbox_size), (_vinst.bbox_right - bbox_size))
		        if (vhallwaydirection > 0)
		            y = _vinst.bbox_bottom + 32
		        else
		            y = _vinst.bbox_top - 78
		        if (verticalstate == 17)
		            state = 17
		        if (state == 17)
		        {
		            x = round(x)
		            var i = 0
		            while (!(scr_solid((x + xscale), y)))
		            {
		                x += xscale
		                i++
		                if (i > room_width)
		                    break
		            }
		        }
		        y += verticalhall_vsp
		        vsp = verticalhall_vsp
		    }
		    y += (vhallwaydirection * 20)
		    y = floor(y)
		    verticalstate = 0
		}
    }
	if (state == 61)
	{
		if !instance_exists(obj_doortransition2)
		{
			var doortransisionspr = spr_doortransition
			if place_meeting(x, y, obj_exitgate)
				doortransisionspr = spr_doortransitionendbig
			else
				doortransisionspr = spr_doortransition
			with instance_create(x, y, obj_doortransition2)
				sprite_index = doortransisionspr
		}
	}
    hallway = 0
    box = 0
    if (global.shroomfollow == 1)
        instance_create(x, y, obj_pizzakinshroom)
    if (global.cheesefollow == 1)
        instance_create(x, y, obj_pizzakincheese)
    if (global.tomatofollow == 1)
        instance_create(x, y, obj_pizzakintomato)
    if (global.sausagefollow == 1)
        instance_create(x, y, obj_pizzakinsausage)
    if (global.pineapplefollow == 1)
        instance_create(x, y, obj_pizzakinpineapple)
    roomstartx = x
    roomstarty = y
}

