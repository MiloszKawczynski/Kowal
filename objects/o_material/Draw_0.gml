//for(j=100;j>=i;j--)
//{
//	if j==indeks_wybranego_wezla {draw_set_color(c_yellow)}
//	else {draw_set_color(c_blue)}
//	draw_circle(tablicapozycjix[j],tablicapozycjiy[j],3,0)
//}

//draw_set_color(c_white)
//draw_text(100,100,roz)

if gotowiec==true
{
	draw_sprite_general(global.zapisanabron[rodzaj_gotowca],0,0,0,1600,800,gotx[ilosc_gotowcow]-800,goty[ilosc_gotowcow]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
}

if postawiony_gotowiec==true
{
	switch (ilosc_gotowcow-1)
    {
    case 9:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[9]],0,0,0,1600,800,gotx[9]-800,goty[9]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 8:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[8]],0,0,0,1600,800,gotx[8]-800,goty[8]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 7:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[7]],0,0,0,1600,800,gotx[7]-800,goty[7]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 6:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[6]],0,0,0,1600,800,gotx[6]-800,goty[6]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 5:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[5]],0,0,0,1600,800,gotx[5]-800,goty[5]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
    case 4:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[4]],0,0,0,1600,800,gotx[4]-800,goty[4]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
    case 3:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[3]],0,0,0,1600,800,gotx[3]-800,goty[3]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 2:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[2]],0,0,0,1600,800,gotx[2]-800,goty[2]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 1:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[1]],0,0,0,1600,800,gotx[1]-800,goty[1]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
	case 0:
        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[0]],0,0,0,1600,800,gotx[0]-800,goty[0]-450,1,1,0,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,k_rozgrzanie,1)
    }
}

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
	draw_text(100,400,"Czubki")
	draw_text(100+string_width("Czubki: "),400,ilosc_czubkow)
}

if przegrzanie>30 {draw_sprite_ext(sprite5,0,100,400,5,5,0,c_white,1)}

draw_set_color(k_rozgrzanie)
draw_rectangle(800-global.tablicagrubosc[100]/4,450-global.tablicagrubosc[100]/4,800+global.tablicagrubosc[100]/4,450+global.tablicagrubosc[100]/4,0)

ilosc_czubkow=-1
for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tablicapolaczen[j,jj]!=0;jj++)
	{
		if cz[j]==true
			{
				ilosc_czubkow++;
			}
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
	if o_GUI_k.katalog==true
	{
		global.spr_custom=sprite_add(global.katalog[11,o_GUI_k.pozycja_w_katalogu]+".png",1,false,false,800,450);
		global.spr_custom_cz=sprite_add(global.katalog[11,o_GUI_k.pozycja_w_katalogu]+"_cz.png",1,false,false,800,450);
		global.spr_custom_ot=sprite_add(global.katalog[11,o_GUI_k.pozycja_w_katalogu]+"_ot.png",1,false,false,800,450);
		
		global.dc=global.katalog[3,o_GUI_k.pozycja_w_katalogu];
		global.dd=global.katalog[4,o_GUI_k.pozycja_w_katalogu];
		global.sc=global.katalog[5,o_GUI_k.pozycja_w_katalogu];
		
		global.diro=global.katalog[12,o_GUI_k.pozycja_w_katalogu]
		
		room_goto(room1)
	}
	else
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
	
		if postawiony_gotowiec==true
		{
			switch (ilosc_gotowcow-1)
		    {
		    case 9:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[9]],0,0,0,1600,800,gotx[9]-800,goty[9]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 8:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[8]],0,0,0,1600,800,gotx[8]-800,goty[8]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 7:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[7]],0,0,0,1600,800,gotx[7]-800,goty[7]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 6:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[6]],0,0,0,1600,800,gotx[6]-800,goty[6]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 5:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[5]],0,0,0,1600,800,gotx[5]-800,goty[5]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
		    case 4:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[4]],0,0,0,1600,800,gotx[4]-800,goty[4]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
		    case 3:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[3]],0,0,0,1600,800,gotx[3]-800,goty[3]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 2:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[2]],0,0,0,1600,800,gotx[2]-800,goty[2]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 1:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[1]],0,0,0,1600,800,gotx[1]-800,goty[1]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
			case 0:
		        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[0]],0,0,0,1600,800,gotx[0]-800,goty[0]-450,1,1,0,k_miecz,k_miecz,k_miecz,k_miecz,1)
		    }
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
	
		/*
		Konrad to jest teraz twoje królestwo 
		dc - dmg cięcia 
		dd - dmg dzgniecia
		sc - szybkosc ciecia
		Masz stworzyć formułę która obliczy w miarę logiczny sposób dmg obu rodzajów oraz predkosci ciachania. Tzn aby dmg i spd zależało od różnych parametrów mieczy poniżej wypisuję ci parametry które możesz wykorzystać:
		dlugosc_ostrza - rozumie sie samo przez się
		waga - rozumie sie samo przez się
		g - klasyfikacja miecza (0;200> - sztylet (200;400> - 1 reczny miecz (400;800> - 2 reczny miecz (800;nieskończonmość) - miecz jak z anime (wpisz sobie w google ff7 cloud a zrozumiesz)
		ilosc_czubkow - rozumie sie samo przez siebie
		wartosci podane teraz są przykładowe
		*/
	
		global.dc=5;
		global.dd=10;
		global.sc=20;
	
		//tu w dół jest już moje
	
		global.klasyfikacja=klasyfikacja;
		global.ilosc_czubkow=ilosc_czubkow;
		global.dlugosc_ostrza=dlugosc_ostrza;
		global.waga=waga;
	
		room_goto(room3)
	}
}

if keyboard_check_pressed(vk_f1)
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
	
	if postawiony_gotowiec==true
	{
		switch (ilosc_gotowcow-1)
	    {
	    case 9:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[9]],0,0,0,1600,800,gotx[9]-800,goty[9]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 8:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[8]],0,0,0,1600,800,gotx[8]-800,goty[8]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 7:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[7]],0,0,0,1600,800,gotx[7]-800,goty[7]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 6:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[6]],0,0,0,1600,800,gotx[6]-800,goty[6]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 5:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[5]],0,0,0,1600,800,gotx[5]-800,goty[5]-450,1,1,0,c_white,c_white,c_white,c_white,1)
	    case 4:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[4]],0,0,0,1600,800,gotx[4]-800,goty[4]-450,1,1,0,c_white,c_white,c_white,c_white,1)
	    case 3:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[3]],0,0,0,1600,800,gotx[3]-800,goty[3]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 2:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[2]],0,0,0,1600,800,gotx[2]-800,goty[2]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 1:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[1]],0,0,0,1600,800,gotx[1]-800,goty[1]-450,1,1,0,c_white,c_white,c_white,c_white,1)
		case 0:
	        draw_sprite_general(global.zapisanabron[rodzaj_gotowca_postawionego[0]],0,0,0,1600,800,gotx[0]-800,goty[0]-450,1,1,0,c_white,c_white,c_white,c_white,1)
	    }
	}

	global.szablon = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 0, 0);
	sprite_save(global.szablon,0,"szablon.png");
	surface_reset_target();
	surface_free(surf);
}

if keyboard_check(vk_f2)
{
	if keyboard_check_pressed(ord("0")) or keyboard_check_pressed(ord("1")) or keyboard_check_pressed(ord("2")) or keyboard_check_pressed(ord("3")) or keyboard_check_pressed(ord("4")) or keyboard_check_pressed(ord("5")) or keyboard_check_pressed(ord("6")) or keyboard_check_pressed(ord("7")) or keyboard_check_pressed(ord("8")) or keyboard_check_pressed(ord("9"))
	{
		scr_zapisywanie_elementow()
	}
}

if szablon==true
{
	if o_GUI_k.katalog==true
	{
		global.szablon=global.katalog[0,o_GUI_k.pozycja_w_katalogu]
		o_GUI_k.katalog=false
	}
	draw_sprite_general(global.szablon,0,0,0,1600,800,0,0,1,1,0,c_aqua,c_aqua,c_aqua,c_aqua,0.25)
}