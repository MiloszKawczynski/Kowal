if keyboard_check_pressed(vk_anykey)
{
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
	draw_set_color(c_white)
	draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

	for(j=100;j>=i;j--)
	{
		for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
		{
			draw_set_color(c_white)
		
			draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
			draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
			sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
			sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
			sg=global.tablicagrubosc[j]/4;
			draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
			draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
		}
	}
		
	global.zapisanabron[keyboard_lastchar] = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 0, 0);
	sprite_save(global.zapisanabron[keyboard_lastchar],0,"zapisana"+keyboard_lastchar+".png");
	surface_reset_target();
	surface_free(surf);
}