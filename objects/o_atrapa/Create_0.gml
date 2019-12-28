ost=0
ostx[10]=noone
osty[10]=noone

tab[0,0] = -21
tab[0,1] = 9

tab[1,0] = -21
tab[1,1] = 9

tab[2,0] = -21
tab[2,1] = 9

tab[3,0] = -21
tab[3,1] = 9

tab[4,0] = -21
tab[4,1] = 9

tab[0,2] = -21
tab[0,3] = 9

tab[1,2] = -15
tab[1,3] = 9

tab[2,2] = -3
tab[2,3] = 9

tab[3,2] = 15
tab[3,3] = 9

tab[4,2] = -21
tab[4,3] = 9

przesuniecie_x=15;
przesuniecie_y=-22;

if distance_to_point(o_kowal.x,o_kowal.y)<distance_to_point(instance_nearest(x,y,o_wrog).x,instance_nearest(x,y,o_wrog).y)
{
	swordsman_x=o_kowal.x;
	swordsman_y=o_kowal.y;
	
	swordsman=o_kowal;
}
else
{
	swordsman_x=instance_nearest(x,y,o_wrog).x;
	swordsman_y=instance_nearest(x,y,o_wrog).y;
	
	swordsman=instance_nearest(x,y,o_wrog);
}

y=swordsman_y+przesuniecie_x;
x=swordsman_x+przesuniecie_y;

sprite_index=global.spr_custom
xs=1

obr=0;
o=0;
if global.diro==0
{
	for(i=100;i>10;i--)
	{
		ost=0
		for(j=0;j<=10;j++)
		{
			if global.tablicapolaczen[i,j]!=0
			{
				ost++
				ostp[o]=global.tablicapolaczen[i,j]
			}
		}
		if ost==1
		{
			ostx[o]=global.tablicapozycjix[i]
			osty[o]=global.tablicapozycjiy[i]
			o++;
		}
	}

	diro=point_direction(swordsman_x+((global.tablicapozycjix[ostp[1]]-800)*image_xscale)-22*xs,swordsman_y+((global.tablicapozycjiy[ostp[1]]-450)*image_yscale)+15,swordsman_x+((ostx[1]-800)*image_xscale)-22*xs,swordsman_y+((osty[1]-450)*image_yscale)+15)
}
else
{
	diro=global.diro
}

dmg_c=global.dc
dmg_d=global.dd
spe_c=global.sc

szybkosc_ciecia=1
stan_ciecia=0
opuznienie_ciecia=spe_c/16
granica_ciecia=10

animacja=0

//morek nie titluj się to są przykładowe zmienne

instance_create_depth(x,y,0,o_atrapa_cz)
instance_create_depth(x,y,0,o_atrapa_ot)

alarm[0]=-1