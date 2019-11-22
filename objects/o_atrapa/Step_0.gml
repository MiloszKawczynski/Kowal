y=o_kowal.y+o_kowal.vspeed+przesuniecie_y;
x=o_kowal.x+(przesuniecie_x*xs);

if (o_kowal.kierunek!=0)
{
	xs=o_kowal.kierunek;
	if o_kowal.kierunek=-1
	{
		obr=180
		dirdz=0+diro
	}
	else
	{
		obr=0
		dirdz=0-diro
	}
}

image_xscale=0.35*xs
image_yscale=0.35

direction=point_direction(x,y,mouse_x,mouse_y)+obr
image_angle=direction

klatka_animacji=o_kowal.image_index

if mouse_check_button(mb_left)
{
	animacja=2
}
else
{
	animacja=0
}

przesuniecie_x=tab[klatka_animacji,0+animacja]
przesuniecie_y=tab[klatka_animacji,1+animacja]