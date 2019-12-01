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

if mouse_check_button(mb_left)
{
	sprite_index=sprite3;
}
else
{
	sprite_index=sprite3;
}



camera_set_view_pos(view_camera[0],x-(view_wport[0]/2),y-(view_hport[0]/2));

if keyboard_check_pressed(ord("R")) 
{
	game_restart()
}

if keyboard_check_pressed(vk_enter) 
{
	global.ilosc_broni_w_katalogu++;
	global.katalog[0,global.ilosc_broni_w_katalogu]=global.spr_custom
	global.katalog[1,global.ilosc_broni_w_katalogu]=global.spr_custom_cz
	global.katalog[2,global.ilosc_broni_w_katalogu]=global.spr_custom_ot
	global.katalog[3,global.ilosc_broni_w_katalogu]=global.dc
	global.katalog[4,global.ilosc_broni_w_katalogu]=global.dd
	global.katalog[5,global.ilosc_broni_w_katalogu]=global.sc
	global.katalog[6,global.ilosc_broni_w_katalogu]=global.klasyfikacja
	global.katalog[7,global.ilosc_broni_w_katalogu]=global.dlugosc_ostrza
	global.katalog[8,global.ilosc_broni_w_katalogu]=global.ilosc_czubkow
	global.katalog[9,global.ilosc_broni_w_katalogu]=global.waga
	global.katalog[10,global.ilosc_broni_w_katalogu]=global.jakosc
	room_goto(room2)
}