//inputy

var stan = argument0;

//wartości

zakres1=30;
zakres2=50;
wartosc_predkosci=2;

wartosc_predkosci_uniku=15;

granica_do_uniku=10;

if (liczenie_czasu_od_ataku_przeciwnika==false)
{
	if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
	{
		liczenie_czasu_od_ataku_przeciwnika=true;
	}
}

if (liczenie_czasu_od_ataku_przeciwnika==true)
{
	czas_od_ataku_przeciwnika++;
}

//stan spoczynku

if (stan==0)
{	
	if (czas<=0)
	{
		hspeed=0;
		czas=0;
		spoczynek=choose(0,1);
	}
	
	if (spoczynek==0)
	{
		if czas<=0
		{
			czas=random_range(zakres1*2,zakres2*2);
		}
		
		if czas>0
		{
			hspeed=0;
			czas--;
		}
	}
	
	if (spoczynek==1)
	{
		if czas<=0
		{
			zwrot=choose(-1,1);
			czas=random_range(zakres1,zakres2);
		}
		
		if czas>0
		{
			hspeed=wartosc_predkosci*zwrot;
			czas--;
		}
	}
}

//stan walki

if (stan==1)
{
	
	if czas_od_ataku_przeciwnika>granica_do_uniku+random_range(-5,30) and distance_to_object(o_kowal)<random_range(100,300)
	{
		liczenie_czasu_od_ataku_przeciwnika=false;
		czas_od_ataku_przeciwnika=0;
		
		hspeed=wartosc_predkosci_uniku*sign(x-o_kowal.x)
		unik=true;
	}
	else
	{
		if (ruch==0)
		{
			ruch=choose(1,2,5);
		}
	}
	
	if (unik==true)
	{
		hspeed-=sign(hspeed);

		if (hspeed=0)
		{
			unik=false;
			if (ruch==0)
			{
				ruch=choose(1,1,2,2,3,5);
			}
		}
	}
	else
	{
		if ruch==1
		{
			//ruch=0;
		}
		
		if ruch==2
		{
			//ruch=0;
		}
		
		if ruch==3
		{
			hspeed=-wartosc_predkosci_uniku*sign(x-o_kowal.x);
			unik=true;
			ruch=0;
		}
		
		if ruch==5
		{
			hspeed=0;
			czas=random_range(zakres1,zakres2);
			ruch=4;
		}
		
		if (czas>0)
		{
			czas--;
		}
		
		if (czas<=0)
		{
			ruch=choose(1,1,2,2,3,5);
		}
	}
}