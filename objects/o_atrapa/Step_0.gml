y=o_kowal.y+o_kowal.vspeed+15;

if (o_kowal.kierunek!=0)
{
	x=o_kowal.x-22*o_kowal.kierunek;
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