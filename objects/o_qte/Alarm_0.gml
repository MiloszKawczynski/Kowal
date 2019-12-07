global.qte--;
instance_create_depth(x,y,0,o_qte);
if global.qte==0
{
	//room_goto_next()
	keyboard_string="";
	zapisywanie_nazwy=true;
}
else
{
	global.jakosc+=25-((abs(x-wspol_x)/seksapil/2)*100)
	instance_destroy();
}