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
		rozgrzanie++;
	}
}
else
{
	if rozgrzanie>0
	{
		rozgrzanie--;
	}
}

roz=(rozgrzanie*0.45)+50

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

if mouse_check_button_pressed(mb_left)
{		
	if n<=roz and n>wyp
	{
		i--
		global.tx[i]=mouse_x
		global.ty[i]=mouse_y
		for(j=0;global.tp[i,j]!=0;j++)
		{
		}
		global.tp[i,j]=nn
		wysokosc=global.tg[nn]
		global.tg[i]=wysokosc-1
		roz=rozz
	}
	
	if n<=wyp
	{
		global.tg[nn]+=predkosc_rozklepywania
		roz=rozz
	}
}

if mouse_check_button_pressed(mb_right)
{		
	if n<=wyp
	{
		global.tg[nn]-=predkosc_rozklepywania
		roz=rozz
	}
}