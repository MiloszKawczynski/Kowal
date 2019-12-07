if(x>wspol_x+seksapil/2 or x<wspol_x-seksapil/2) {hspeed = -hspeed}

if zapisywanie_nazwy==false
{
	if(keyboard_check_pressed(guzik)) and alarm[0]=-1
	{
		hspeed=0
		alarm[0]=odstemp;
	}
}


if keyboard_check_pressed(vk_f1)
{
	room_restart()
}

if zapisywanie_nazwy==true
{
	if keyboard_check_pressed(vk_enter)
	{
		global.jakosc=(global.jakosc/75)*100
		room_goto_next();
	}
	
	if string_length(keyboard_string)<=20
	{
		global.nazwa_broni=keyboard_string;
	}
	else
	{
		keyboard_key_press(vk_backspace);
		keyboard_key_release(vk_backspace);
	}
}