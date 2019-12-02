x=mouse_x;
y=mouse_y;

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,akceptacja_x,akceptacja_y)<=64)
{
	keyboard_key_press(vk_enter);
}

if (keyboard_check_pressed(ord("K")) or (mouse_check_button_pressed(mb_left) and (point_distance(x,y,katalog_x,katalog_y)<=64))) and (global.ilosc_broni_w_katalogu>0)
{
	if katalog==true 
	{
		katalog=false;
	}
	else
	{
		katalog=true;
		global.katalog[0,pozycja_w_katalogu]=sprite_add(global.katalog[11,pozycja_w_katalogu]+".png",1,false,false,800,450);
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