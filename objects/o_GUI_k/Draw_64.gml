draw_sprite(sprite12,0,akceptacja_x,akceptacja_y);
draw_sprite(sprite121,0,katalog_x,katalog_y);

if katalog==true
{
	draw_set_color(c_white)
	draw_rectangle(600,50,1000,750,0)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font0)
	draw_text(800,300,global.katalog[11,pozycja_w_katalogu])
	draw_sprite(global.katalog[0,pozycja_w_katalogu],0,800,400)
}