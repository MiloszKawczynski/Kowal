x=mouse_x;
y=mouse_y;

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,akceptacja_x,akceptacja_y)<=64)
{
	if o_material.kucie==true
	{
		keyboard_key_press(vk_enter);
		keyboard_key_release(vk_enter);
	}
}

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,plan_x,plan_y)<=64) and katalog==true
{
	keyboard_key_press(ord("S"));
	keyboard_key_release(ord("S"));
}

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,test_x,test_y)<=64) and katalog==true
{
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
}

if (keyboard_check_pressed(ord("K")) or (mouse_check_button_pressed(mb_left) and (point_distance(x,y,katalog_x,katalog_y)<=64))) and (global.ilosc_broni_w_katalogu>0)
{
	if katalog==true 
	{
		katalog=false;
	}
	else
	{
		o_material.szablon=false;
		zamowienie=false;
		katalog=true;
		global.katalog[0,pozycja_w_katalogu]=sprite_add(global.katalog[11,pozycja_w_katalogu]+".png",1,false,false,800,450);
	}
}

if keyboard_check_pressed(ord("Z"))
{
	if zamowienie==true 
	{
		zamowienie=false;
	}
	else
	{
		zamowienie=true;
		katalog=false;
		dodatek_placy=0
		if global.ilosc_broni_w_katalogu>0
		{
			if global.zlecenie[7]!=""
			{
				dodatek_placy+=((global.katalog[10,pozycja_w_katalogu]-global.zlecenie[7])/wybrednosc)
			}
			if global.zlecenie[0]!=""
			{
				dodatek_placy+=((global.katalog[3,pozycja_w_katalogu]-global.zlecenie[0])/wybrednosc)
			}
			if global.zlecenie[1]!=""
			{
				dodatek_placy+=((global.katalog[4,pozycja_w_katalogu]-global.zlecenie[1])/wybrednosc)
			}
			if global.zlecenie[6]!=""
			{
				dodatek_placy-=(abs(global.katalog[9,pozycja_w_katalogu]-global.zlecenie[6])/wybrednosc)
			}
			if global.zlecenie[3]!="" and global.zlecenie[3]!=global.katalog[6,pozycja_w_katalogu]
			{
				dodatek_placy-=20*wybrednosc
			}
		}
	}
}

if katalog==true
{
	if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
	{
		pozycja_w_katalogu--;
	}
	
	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
	{
		pozycja_w_katalogu++;
	}
	
	if pozycja_w_katalogu<1 {pozycja_w_katalogu=global.ilosc_broni_w_katalogu}
	if pozycja_w_katalogu>global.ilosc_broni_w_katalogu {pozycja_w_katalogu=1}
	
	if keyboard_check(vk_anykey)
	{
		global.katalog[0,pozycja_w_katalogu]=sprite_add(global.katalog[11,pozycja_w_katalogu]+".png",1,false,false,800,450);
	}
	
}

if zamowienie==true
{	
	if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
	{
		pozycja_w_katalogu--;
	}
	
	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
	{
		pozycja_w_katalogu++;
	}
	
	if pozycja_w_katalogu<1 {pozycja_w_katalogu=global.ilosc_broni_w_katalogu}
	if pozycja_w_katalogu>global.ilosc_broni_w_katalogu {pozycja_w_katalogu=1}
	
	if keyboard_check(vk_anykey) and global.ilosc_broni_w_katalogu>0
	{
		dodatek_placy=0
		if global.zlecenie[7]!=""
		{
			dodatek_placy+=((global.katalog[10,pozycja_w_katalogu]-global.zlecenie[7])/wybrednosc)
		}
		if global.zlecenie[0]!=""
		{
			dodatek_placy+=((global.katalog[3,pozycja_w_katalogu]-global.zlecenie[0])/wybrednosc)
		}
		if global.zlecenie[1]!=""
		{
			dodatek_placy+=((global.katalog[4,pozycja_w_katalogu]-global.zlecenie[1])/wybrednosc)
		}
		if global.zlecenie[2]!=""
		{
			dodatek_placy+=((global.katalog[5,pozycja_w_katalogu]-global.zlecenie[2])/wybrednosc)
		}
		if global.zlecenie[6]!=""
		{
			dodatek_placy-=(abs(global.katalog[9,pozycja_w_katalogu]-global.zlecenie[6])/wybrednosc)
		}
		if global.zlecenie[3]!="" and global.zlecenie[3]!=global.katalog[6,pozycja_w_katalogu]
		{
			dodatek_placy-=20*wybrednosc
		}
		if global.zlecenie[4]!=""
		{
			dodatek_placy-=abs(global.zlecenie[4]-global.katalog[7,pozycja_w_katalogu])*wybrednosc*10
		}
		if global.zlecenie[5]!=""
		{
			dodatek_placy-=abs(global.zlecenie[5]!=global.katalog[8,pozycja_w_katalogu])*wybrednosc*10
		}
	}
	
}

//if o_material.debug==true
//{
	if keyboard_check_pressed(ord("I"))
	{
		global.zlecenie[0]=""
		global.zlecenie[1]=""
		global.zlecenie[2]=""
		global.zlecenie[3]=""
		global.zlecenie[4]="5"
		global.zlecenie[5]="1"
		global.zlecenie[6]="100"
		global.zlecenie[7]=""
		global.zlecenie[8]=120
	}
//}