font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(xi, yi, string_hash_to_newline(string_hash_to_newline(message)))
//if ((global.combo != 0) && ((global.combotime != 0) && ((tvsprite == spr_tvdefault) || (tvsprite == spr_tvcombo))))
//  draw_text(852, 75, string_hash_to_newline(string_hash_to_newline(global.combo)))
draw_text(832, 60, string_hash_to_newline(string_hash_to_newline(global.collect)))

