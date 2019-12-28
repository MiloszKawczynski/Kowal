swordsman_x=swordsman.x;
swordsman_y=swordsman.y;

y=swordsman_y+o_kowal.vspeed+przesuniecie_y;
x=swordsman_x+(przesuniecie_x*xs)+o_kowal.hspeed;

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

image_angle=direction


klatka_animacji=o_kowal.image_index

if mouse_check_button_pressed(mb_left) and !mouse_check_button_pressed(mb_right)
{
	animacja=2
	direction=0-diro//+obr
}

if mouse_check_button_pressed(mb_right) and !mouse_check_button_pressed(mb_left)
{
	xss=xs;
	if alarm[0]==-1
	{
		direction=0-diro+90+obr
	}
	alarm[0]=1
}

if !mouse_check_button_pressed(mb_right) and !mouse_check_button_pressed(mb_left)
{
	if alarm[0]==-1
	{
		//direction=point_direction(x,y,mouse_x,mouse_y)+obr
	}
	animacja=0
	//direction=90
}

przesuniecie_x=tab[klatka_animacji,0+animacja]
przesuniecie_y=tab[klatka_animacji,1+animacja]