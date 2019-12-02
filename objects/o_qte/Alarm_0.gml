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
	instance_destroy();
}