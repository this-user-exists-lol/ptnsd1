smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-+", 1, 0)
draw_set_font(smallnumber)
draw_set_halign(fa_center)
if negative
	draw_set_color(c_red)
else
	draw_set_color(c_white)
draw_text(x, y, string_hash_to_newline(number))

