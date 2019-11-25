draw_self()

draw_healthbar(x-64,y-87,x+64,y-80,(hp/100)*100,c_black,c_red,c_green,0,1,1)

if niesmiertelnosc!=0
{
	draw_set_font(font0)
	draw_set_color(c_red)
	
	draw_text(x-32,y-150,"-") draw_text(x-32+string_width("-"),y-150,obr)
}