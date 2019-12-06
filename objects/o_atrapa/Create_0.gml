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

y=o_kowal.y+przesuniecie_x;
x=o_kowal.x+przesuniecie_y;

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

	diro=point_direction(o_kowal.x+((global.tablicapozycjix[ostp[1]]-800)*image_xscale)-22*xs,o_kowal.y+((global.tablicapozycjiy[ostp[1]]-450)*image_yscale)+15,o_kowal.x+((ostx[1]-800)*image_xscale)-22*xs,o_kowal.y+((osty[1]-450)*image_yscale)+15)
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