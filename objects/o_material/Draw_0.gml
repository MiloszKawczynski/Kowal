//for(j=100;j>=i;j--)
//{
//	if j==indeks_wybranego_wezla {draw_set_color(c_yellow)}
//	else {draw_set_color(c_blue)}
//	draw_circle(tablicapozycjix[j],tablicapozycjiy[j],3,0)
//}

//draw_set_color(c_white)
//draw_text(100,100,roz)

if debug==true
{
	draw_set_color(c_white)
	//draw_text(100,100,rozgrzanie)
	//draw_text(100,200,roz)
	//draw_text(100,300,g)
	draw_text(100,100,"Klasyfikacja")
	draw_text(100+string_width("klasyfikacja: "),100,klasyfikacja)
	draw_text(100,200,"Dlugosc ostrza")
	draw_text(100+string_width("Dlugosc ostrza: "),200,dlugosc_ostrza)
	draw_text(100,300,"Waga")
	draw_text(100+string_width("Waga: "),300,waga)
}

if przegrzanie>30 {draw_sprite_ext(sprite5,0,100,400,5,5,0,c_white,1)}

draw_set_color(k_rozgrzanie)
draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
	{
		if debug==true
		{
			if cz[j]==true
			{
				draw_set_color(c_aqua)
			}
			else
			if ot[j]==true
			{
				draw_set_color(c_orange)
			}
			else
			{
				draw_set_color(k_rozgrzanie)
			}
		}
		else
		{
			draw_set_color(k_rozgrzanie)
		}
		
		draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
		draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
		sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
		sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
		sg=global.tablicagrubosc[j]/4;
		
		draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
		draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
		
		//draw_roundrect_ext(sx-sg,sy-sg,sx+sg,sy+sg,15,15,0)
		//draw_roundrect_ext(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,15,15,0)
		
		if debug==true
		{
			draw_set_color(c_blue)
			draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],5)
		}
	}
}

if debug==true
{
	for(j=100;j>=i;j--)
	{
		if j==indeks_wybranego_wezla {draw_set_color(c_yellow)}
		else {draw_set_color(c_blue)}
		draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],6,0)
	}
}

if kucie==true
{
	draw_set_color(c_red)
	draw_circle(global.tablicapozycjix[indeks_wybranego_wezla],global.tablicapozycjiy[indeks_wybranego_wezla],roz,1)
	draw_circle(global.tablicapozycjix[indeks_wybranego_wezla],global.tablicapozycjiy[indeks_wybranego_wezla],wyp,1)
}


//draw_sprite(sprite4,0,800,450)

if kucie==false
{
	draw_sprite_part_ext(sprite71,0,((nmx+nwx)/2)-32,0,64,900,((nmx+nwx)/2)-32,0,1,1,c_white,1)
	//draw_rectangle_color(((nmx+nwx)/2)-32,0,((nmx+nwx)/2)+32,900,c_black,c_black,c_black,c_black,0)
}

if debug==true
{
	draw_set_color(c_orange)
	draw_line_width(global.ox1,global.oy1,global.ox2,global.oy2,10)
	draw_rectangle(global.ox1,global.oy1,global.ox2,global.oy2,1)
}

/*Tworzenie sprite z utworznoego materiału*/

if keyboard_check_pressed(vk_enter)
{
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
	draw_set_color(k_miecz)
	draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

	for(j=100;j>=i;j--)
	{
		for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
		{
			draw_set_color(k_miecz)
		
			draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
			draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
			sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
			sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
			sg=global.tablicagrubosc[j]/4;
			draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
			draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
		}
	}
	
	if gotowiec==true
	{
		draw_sprite_general(global.zapisanabron,0,0,0,1600,800,0,0,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,0.25)
	}
	
	global.spr_custom = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	
//tworzneie spritu czubków
	
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
	draw_set_color(k_miecz)
	draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

	for(j=100;j>=i;j--)
	{
		for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
		{
			if cz[j]==true
			{
				draw_set_color(c_aqua)
				draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
				draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
				sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
				sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
				sg=global.tablicagrubosc[j]/4;
				draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
				draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
			}
			else
			{
				draw_set_color(k_rozgrzanie)
			}
			
			draw_set_color(k_miecz)
		}
	}

	global.spr_custom_cz = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	
//tworzneie spritu ostrza
	
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
	draw_set_color(k_miecz)
	draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

	for(j=100;j>=i;j--)
	{
		for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
		{
			if ot[j]==true
			{
				draw_set_color(c_orange)
				draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
				draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
				sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
				sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
				sg=global.tablicagrubosc[j]/4;
				draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
				draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
			}
			else
			{
				draw_set_color(k_rozgrzanie)
			}
			
			draw_set_color(k_miecz)
		}
	}

	global.spr_custom_ot = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	
	global.dc=waga/dlugosc_ostrza
	global.dd=dlugosc_ostrza/waga
	
	room_goto(room3)
}

if keyboard_check(vk_shift)
{
	if keyboard_check_pressed(ord("0"))
	{
		var surf;
		surf = surface_create(1600,900);
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
	
		draw_set_color(k_miecz)
		draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

		for(j=100;j>=i;j--)
		{
			for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
			{
				draw_set_color(k_miecz)
		
				draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
				draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
				sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
				sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
				sg=global.tablicagrubosc[j]/4;
				draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
				draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
			}
		}

		global.szablon = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 0, 0);
		sprite_save(global.szablon,0,"szablon.png");
		surface_reset_target();
		surface_free(surf);
	}
	
	if keyboard_check_pressed(ord("1"))
	{
		var surf;
		surf = surface_create(1600,900);
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
	
		draw_set_color(k_miecz)
		draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

		for(j=100;j>=i;j--)
		{
			for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
			{
				draw_set_color(k_miecz)
		
				draw_line_width(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[global.tablicapolaczen[j,jj]],global.tablicapozycjiy[global.tablicapolaczen[j,jj]],global.tablicagrubosc[j]/4)
				draw_circle(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicagrubosc[j]/7.69,0)
		
				sx=(global.tablicapozycjix[j]+global.tablicapozycjix[global.tablicapolaczen[j,jj]])/2;
				sy=(global.tablicapozycjiy[j]+global.tablicapozycjiy[global.tablicapolaczen[j,jj]])/2;
				sg=global.tablicagrubosc[j]/4;
				draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
				draw_rectangle(global.tablicapozycjix[j]-sg,global.tablicapozycjiy[j]-sg,global.tablicapozycjix[j]+sg,global.tablicapozycjiy[j]+sg,0)
			}
		}

		global.zapisanabron = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 0, 0);
		sprite_save(global.zapisanabron,0,"zapisana.png");
		surface_reset_target();
		surface_free(surf);
	}
}

if szablon==true
{
	draw_sprite_general(global.szablon,0,0,0,1600,800,0,0,1,1,0,c_aqua,c_aqua,c_aqua,c_aqua,0.25)
}

if gotowiec==true
{
	draw_sprite_general(global.zapisanabron,0,0,0,1600,800,0,0,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
}