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
	if n<=roz
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
	else
	{
		roz+=5
	}
}