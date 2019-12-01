global.qte--;
instance_create_depth(x,y,0,o_qte);
instance_destroy();
if global.qte==0
	{
		room_goto_next()
		zapisywanie_nazwy=true;
	}