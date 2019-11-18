ost=0
ostx[10]=noone
osty[10]=noone


y=o_kowal.y+15;
x=o_kowal.x-22;

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