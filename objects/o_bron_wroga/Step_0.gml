swordsman_x=swordsman.x;
swordsman_y=swordsman.y;

y=swordsman_y+swordsman.vspeed-przesuniecie_y;
x=swordsman_x+(przesuniecie_x*-xs)+swordsman.hspeed;

if (sign(swordsman.x-o_kowal.x)!=0)
{
	if (xs!=-sign(swordsman.x-o_kowal.x))
	{
		swordsman.ruch=0;
		przesuniecie_x=15;
	}
	xs=-sign(swordsman.x-o_kowal.x);
}

if swordsman.ruch==1
{
	direction=0;
	alarm[1]=1;
	wrot=0;
	px=0;
	swordsman.ruch=4;
}

if swordsman.ruch==2
{
	direction=0-(270*xs);
	alarm[0]=1;
	swordsman.ruch=4;
}

image_xscale=0.35*xs;
image_yscale=0.35;

image_angle=direction;