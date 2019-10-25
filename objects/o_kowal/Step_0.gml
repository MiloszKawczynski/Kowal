

//ruch 
if (keyboard_check(ord("D"))or keyboard_check(vk_right))
{
hspeed+=predkosc;
}

if (keyboard_check(ord("A")) or keyboard_check(vk_left))
{
hspeed-=predkosc;
}


//wolniej(xD)
if (keyboard_check_released(ord("A")) or keyboard_check(vk_left))
{
while (hspeed!=0)
hspeed+=wolniej
}

if (keyboard_check_released(ord("D")) or keyboard_check(vk_right))
{
while (hspeed!=0)
hspeed-=wolniej
}

//grawitacja
if (place_free(x,y+vspeed))
vspeed+=grawitacja;


//kolizja
if (place_meeting(x,y+vspeed,o_blok))
{
	vspeed=0;
}


//skok
		if (keyboard_check_pressed(ord("W")) or keyboard_check(vk_up))
		{
			if (place_meeting(x,y+1,o_blok))
			vspeed-=skok;
		}
		
//kierunek
kierunek=(keyboard_check(ord("D"))-keyboard_check(ord("A")));

if (kierunek!=0)
{
image_xscale=kierunek;
}


