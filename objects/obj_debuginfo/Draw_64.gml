draw_set_font(font1)
draw_set_halign(fa_center)
draw_set_color(c_white)
if global.showcollisions
{
	if instance_exists(obj_slaphitbox2)
	    draw_text(832, 300, string_hash_to_newline(string_hash_to_newline(((string(obj_slaphitbox2.touchenemy) + " ") + "TOUCH ENEMY"))))
	else
		draw_text(832, 300, string_hash_to_newline(string_hash_to_newline("NOT PRESENT")))
	draw_text(832, 500, string_hash_to_newline(string_hash_to_newline(((string(obj_player1.bumped) + " ") + "bumped"))))
	draw_text(832, 315, string_hash_to_newline(string_hash_to_newline(sprite_get_name(obj_player.sprite_index))))
	draw_text(832, 330, string_hash_to_newline(string_hash_to_newline(obj_player.state)))
	draw_text(832, 345, string_hash_to_newline(string_hash_to_newline(obj_player.hsp)))
	draw_text(832, 360, string_hash_to_newline(string_hash_to_newline(obj_player.vsp)))
	if obj_player.state == 64
		draw_text(900, 320, string_hash_to_newline(string_hash_to_newline(obj_player.startgate_buffer)))
	if obj_player1.state == "faceslam"
		draw_text(900, 330, string_hash_to_newline(string_hash_to_newline(obj_player.fallinganimation)))
}
