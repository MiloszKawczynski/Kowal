ost=0
ostx[10]=noone
osty[10]=noone

tab[0,0] = 15
tab[0,1] = -22

tab[1,0] = 15
tab[1,1] = -22

tab[2,0] = 15
tab[2,1] = -22

tab[3,0] = 15
tab[3,1] = -22

tab[4,0] = 15
tab[4,1] = -22

tab[0,2] = 15
tab[0,3] = -22

tab[1,2] = 30
tab[1,3] = -22

tab[2,2] = 50
tab[2,3] = -22

tab[3,2] = 80
tab[3,3] = -22

tab[4,2] = 10
tab[4,3] = -22

przesuniecie_x=15;
przesuniecie_y=-22;

y=o_kowal.y+przesuniecie_x;
x=o_kowal.x+przesuniecie_y;

sprite_index=global.spr_custom
xs=1

obr=0;
o=0;
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

dmg_c=10
dmg_d=15

//morek nie titluj się to są przykładowe zmienne

instance_create_depth(x,y,0,o_atrapa_cz)
instance_create_depth(x,y,0,o_atrapa_ot)