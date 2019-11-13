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
			if global.tx[j]<nmx
			{
				nmx=global.tx[j];
			}
			if global.tx[j]>nwx
			{
				nwx=global.tx[j];
			}
		}
		for(j=100;j>=i;j--)
		{	
			if global.tx[j]<(nmx+nwx)/2
			{
				global.tx[j]-=32;
			}
			if global.tx[j]>(nmx+nwx)/2
			{
				global.tx[j]+=32;
			}
		}
		kucie=false;
		part_particles_create(global.iskry_sys,(nmx+nwx)/2,450,global.iskry,125);
	}

	roz=(rozgrzanie*0.45)+50

	//sprawdzanie najbliższego myszce węzła

	n=1600
	nn=noone

	for(j=100;j>=i;j--)
	{
		if point_distance(global.tx[j],global.ty[j],mouse_x,mouse_y)<n
		{
			n=point_distance(global.tx[j],global.ty[j],mouse_x,mouse_y)
			nn=j
		}
	}

	//sprawdzanie dkuosci ostrza, wagi broni, klasyfikacji broni

	for(j=100;j>=i;j--)
	{
		instance_create_depth(global.tx[j],global.ty[j],10,o_znacznik_wezla)
	}

	g=0
	dlo=0
	waga=0

	for(j=100;j>=i;j--)
	{
		waga+=global.tg[j]
		
		for(jj=100;jj>=i;jj--)
		{
			if point_distance(global.tx[j],global.ty[j],global.tx[jj],global.ty[jj])>g
			{
				g=point_distance(global.tx[j],global.ty[j],global.tx[jj],global.ty[jj])
			}
		
			var lista = ds_list_create();
			if collision_line_list(global.tx[j],global.ty[j],global.tx[jj],global.ty[jj],o_znacznik_wezla,false,true,lista,false)>dlo
			{
				dlo=collision_line_list(global.tx[j],global.ty[j],global.tx[jj],global.ty[jj],o_znacznik_wezla,false,true,lista,false)
				global.ox1=global.tx[j]
				global.oy1=global.ty[j]
				global.ox2=global.tx[jj]
				global.oy2=global.ty[jj]
			}
		
			ds_list_destroy(lista);
		}
	}

	instance_destroy(o_znacznik_wezla)

	if g>0
	{
		klasyfikacja="Sztylet"
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
			global.tx[i]=mouse_x;
			global.ty[i]=mouse_y;
			for(j=0;global.tp[i,j]!=0;j++)
			{
			}
			global.tp[i,j]=nn;
			wysokosc=global.tg[nn];
			global.tg[i]=wysokosc-1;
			roz=rozz;
			for(j=0;global.tp[nn,j]!=0;j++)
			{
			}
			global.tp[nn,j]=i;
		}
	
		if n<=wyp
		{
			global.tg[nn]+=predkosc_rozklepywania
			roz=rozz
		}
	}

	// Sklepywanie węzła

	if mouse_check_button_pressed(mb_right)
	{		
		if n<=wyp
		{
			global.tg[nn]-=predkosc_rozklepywania
			roz=rozz
		}
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