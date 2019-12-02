if alarm[0]==-1
{
	draw_sprite(sprite7,1,800,450)
}
else
{
	draw_sprite(sprite7,0,800,450)
}

if zapisywanie_nazwy==false
{
	draw_set_color(c_black)
	draw_rectangle(wspol_x-seksapil/2-5,wspol_y-szerokosc/2-5,wspol_x+seksapil/2+5,wspol_y+szerokosc/2+5,false)
	draw_rectangle_color(wspol_x,wspol_y-szerokosc/2,wspol_x+seksapil/2,wspol_y+szerokosc/2,kolor_srodka,kolor_krawedzi,kolor_krawedzi,kolor_srodka,false)
	draw_rectangle_color(wspol_x-seksapil/2,wspol_y-szerokosc/2,wspol_x,wspol_y+szerokosc/2,kolor_krawedzi,kolor_srodka,kolor_srodka,kolor_krawedzi,false)
	draw_self()
}

//draw_text(wspol_x,wspol_y-100,wynik)
//draw_text(wspol_x,wspol_y+100,abs(x-wspol_x)/seksapil/2)

if zapisywanie_nazwy==true
{
	draw_set_color(c_black);
	draw_rectangle(800-(string_width(global.nazwa_broni)/2)-25,420,800+(string_width(global.nazwa_broni)/2)+25,480,0);
	draw_set_color(c_white);
	draw_rectangle(800-(string_width(global.nazwa_broni)/2)-15,430,800+(string_width(global.nazwa_broni)/2)+15,470,0);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(800,450,global.nazwa_broni);
}