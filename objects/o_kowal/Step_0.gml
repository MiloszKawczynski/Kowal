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

if niesmiertelnosc==0
{
	if (place_meeting(x,y,o_bron_wroga) and (instance_nearest(x,y,o_wrog).ruch==1 or instance_nearest(x,y,o_wrog).ruch==2)) {obr=o_atrapa.dmg_d; hp-=o_atrapa.dmg_d; niesmiertelnosc=10;}
}

if niesmiertelnosc>0 {niesmiertelnosc--;}

if keyboard_check_pressed(vk_enter) 
{
	if global.diro!=0
	{
		room_goto(room2)
	}
	else
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
		global.katalog[11,global.ilosc_broni_w_katalogu]=global.nazwa_broni
		global.katalog[12,global.ilosc_broni_w_katalogu]=o_atrapa.diro
	
		sprite_save(global.spr_custom,0,global.nazwa_broni+".png");
		sprite_save(global.spr_custom_cz,0,global.nazwa_broni+"_cz.png");
		sprite_save(global.spr_custom_ot,0,global.nazwa_broni+"_ot.png");
	
		var file;
		file=file_text_open_append("Katalog_broni.txt");

		file_text_write_real(file,global.katalog[0,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[1,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[2,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[3,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[4,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[5,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_string(file,global.katalog[6,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[7,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[8,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[9,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_real(file,global.katalog[10,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_string(file,global.katalog[11,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");
		file_text_write_string(file,global.katalog[12,global.ilosc_broni_w_katalogu]);
		file_text_write_string(file,"\n");

		file_text_close(file);
	
		var file;
		file=file_text_open_write("Ilosc_broni_w_katalogu.txt");
		file_text_write_real(file,global.ilosc_broni_w_katalogu);
		file_text_close(file);
	
		room_goto(room2)
	}
}