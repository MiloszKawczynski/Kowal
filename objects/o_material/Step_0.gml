if kucie==true
{
	//rozgrzewanie

	if rozgrzanie<=100
	{
		k_rozgrzanie=merge_color(c_maroon,c_yellow,rozgrzanie/100)
	}
	else
	{
		k_rozgrzanie=merge_color(c_yellow,c_white,rozgrzanie/100)
	}

	if keyboard_check(ord("Q"))
	{
		if rozgrzanie<200
		{
			rozgrzanie+=predkosc_zwiekszania_zasiegu;
		}
		else
		{
			rozgrzanie=200
			przegrzanie++;
		}
	}
	else
	{
		if rozgrzanie>0
		{
			rozgrzanie--;
		}
		if przegrzanie>0
		{
			przegrzanie--;
		}
	}

	if przegrzanie>60 
	{
		nmx=1600;
		nwx=0
	
		for(j=100;j>=i;j--)
		{
			if global.tablicapozycjix[j]<nmx
			{
				nmx=global.tablicapozycjix[j];
			}
			if global.tablicapozycjix[j]>nwx
			{
				nwx=global.tablicapozycjix[j];
			}
		}
		for(j=100;j>=i;j--)
		{	
			if global.tablicapozycjix[j]<(nmx+nwx)/2
			{
				global.tablicapozycjix[j]-=32;
			}
			if global.tablicapozycjix[j]>(nmx+nwx)/2
			{
				global.tablicapozycjix[j]+=32;
			}
		}
		kucie=false;
		part_particles_create(global.iskry_sys,(nmx+nwx)/2,450,global.iskry,125);
	}

	roz=(rozgrzanie*0.45)+50

	//sprawdzanie najbliższego myszce węzła

	n=1600
	indeks_wybranego_wezla=noone

	for(j=100;j>=i;j--)
	{
		if point_distance(global.tablicapozycjix[j],global.tablicapozycjiy[j],mouse_x,mouse_y)<n
		{
			n=point_distance(global.tablicapozycjix[j],global.tablicapozycjiy[j],mouse_x,mouse_y)
			indeks_wybranego_wezla=j
		}
	}

	//sprawdzanie dkuosci ostrza, wagi broni, klasyfikacji broni

	for(j=100;j>=i;j--)
	{
		instance_create_depth(global.tablicapozycjix[j],global.tablicapozycjiy[j],10,o_znacznik_wezla)
	}

	g=0
	dlugosc_ostrza=0
	waga=0

	for(j=100;j>=i;j--)
	{
		waga+=global.tablicagrubosc[j]
		
		for(jj=100;jj>=i;jj--)
		{
			if point_distance(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[jj],global.tablicapozycjiy[jj])>g
			{
				g=point_distance(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[jj],global.tablicapozycjiy[jj])
			}
		
			var lista = ds_list_create();
			if collision_line_list(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[jj],global.tablicapozycjiy[jj],o_znacznik_wezla,false,true,lista,false)>dlugosc_ostrza
			{
				dlugosc_ostrza=collision_line_list(global.tablicapozycjix[j],global.tablicapozycjiy[j],global.tablicapozycjix[jj],global.tablicapozycjiy[jj],o_znacznik_wezla,false,true,lista,false)
				global.ox1=global.tablicapozycjix[j]
				global.oy1=global.tablicapozycjiy[j]
				global.ox2=global.tablicapozycjix[jj]
				global.oy2=global.tablicapozycjiy[jj]
			}
		
			for(jjj=100;jjj>=i;jjj--;)
			{
				if global.tablicapozycjix[jjj]>=global.ox1-32 and global.tablicapozycjix[jjj]<=global.ox2+32 and global.tablicapozycjiy[jjj]>=global.oy1-32 and global.tablicapozycjiy[jjj]<=global.oy2+32
				{
					ot[jjj]=true;
				}
				else
				{
					ot[jjj]=false;
				}
			}
			
			ds_list_destroy(lista);
		}
	}

	instance_destroy(o_znacznik_wezla)
	
	for(j=100;j>=i;j--)
	{
		ost=0
		for(jj=0;jj<=10;jj++)
		{
			if global.tablicapolaczen[j,jj]!=0
			{
				ost++
			}
		}
		if ost==1
		{
			cz[j]=true;
		}
		else
		{
			cz[j]=false;
		}
	}

	if g>0
	{
		klasyfikacja="Sztablicapozycjiylet"
	}
	if g>200
	{
		klasyfikacja="Miecz 1-ręczny"
	}
	if g>400
	{
		klasyfikacja="Miecz 2-ręczny"
	}
	if g>800
	{
		klasyfikacja="Miecz z Anime"
	}

	//tworzenie i rozklepywanie węzła

	if mouse_check_button_pressed(mb_left)
	{		
		if n<=roz and n>wyp
		{
			i--;
			global.tablicapozycjix[i]=mouse_x;
			global.tablicapozycjiy[i]=mouse_y;
			for(j=0;global.tablicapolaczen[i,j]!=0;j++)
			{
			}
			global.tablicapolaczen[i,j]=indeks_wybranego_wezla;
			wysokosc=global.tablicagrubosc[indeks_wybranego_wezla];
			global.tablicagrubosc[i]=wysokosc-1;
			roz=rozz;
			for(j=0;global.tablicapolaczen[indeks_wybranego_wezla,j]!=0;j++)
			{
			}
			global.tablicapolaczen[indeks_wybranego_wezla,j]=i;
		}
	
		if n<=wyp
		{
			global.tablicagrubosc[indeks_wybranego_wezla]+=predkosc_rozklepywania
			roz=rozz
		}
	}

	// Sklepywanie węzła

	if mouse_check_button_pressed(mb_right)
	{		
		if n<=wyp
		{
			global.tablicagrubosc[indeks_wybranego_wezla]-=predkosc_rozklepywania
			roz=rozz
		}
	}
}
else
{
	if rozgrzanie>0
	{
		rozgrzanie--;
	}
	
	if rozgrzanie<=100
	{
		k_rozgrzanie=merge_color(c_maroon,c_yellow,rozgrzanie/100)
	}
	else
	{
		k_rozgrzanie=merge_color(c_yellow,c_white,rozgrzanie/100)
	}
}

if keyboard_check_pressed(ord("R"))
{
	room_restart()
}

if keyboard_check_pressed(ord("D"))
{
	if debug==false {debug=true} else{debug=false}
}

if keyboard_check_pressed(ord("S"))
{
	if szablon==false {szablon=true} else{szablon=false}
} 

if keyboard_check_pressed(ord("G"))
{
	if gotowiec==false {gotowiec=true} else{gotowiec=false}
} 