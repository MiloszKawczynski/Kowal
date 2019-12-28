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

xs=-1
	
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