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
//if(place_meeting(x+32,y,o_kowal) && 