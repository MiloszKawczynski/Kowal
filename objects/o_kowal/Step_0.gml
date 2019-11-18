//kierunek

kierunek=(keyboard_check(ord("D"))-keyboard_check(ord("A")));
hspeed=predkosc*kierunek

if (kierunek!=0)
{
image_xscale=kierunek;
}

//xD

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

//kolizja pozioma
if (place_meeting(x+hspeed,y,o_blok))
{
    while(!place_meeting(x+sign(hspeed),y,o_blok))
	{
        x+=sign(hspeed);
	}
	x-=sign(hspeed)*3;
    hspeed=0;
}



//skok
		if (keyboard_check_pressed(ord("W")) or keyboard_check(vk_up))
		{
			if (place_meeting(x,y+1,o_blok))
			vspeed-=skok;
		}



camera_set_view_pos(view_camera[0],x-(view_wport[0]/2),y-(view_hport[0]/2));

if keyboard_check_pressed(ord("R")) 
{
	game_restart()
}