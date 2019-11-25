//grawitacja
if (place_free(x,y+vspeed))
vspeed+=grawitacja;


//kolizja
if (place_meeting(x,y+vspeed,o_blok))
{
    while(!place_meeting(x,y+sign(vspeed),o_blok))
    {
        y+=sign(vspeed);
    }
    vspeed=0;
}

//obrazenia
if niesmiertelnosc==0
{
	if(place_meeting(x,y,o_atrapa_cz)) and o_atrapa.animacja=2 {obr=o_atrapa.dmg_d hp-=o_atrapa.dmg_d niesmiertelnosc=10}
	else
	if(place_meeting(x,y,o_atrapa_ot)) and o_atrapa.alarm[0]!=-1 {obr=o_atrapa.dmg_c hp-=o_atrapa.dmg_c niesmiertelnosc=10}
}

if niesmiertelnosc>0 {niesmiertelnosc--;}

image_xscale=sign(o_kowal.x-x)

if hp<=0 {instance_destroy();}