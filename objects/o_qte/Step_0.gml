if(x>wspol_x+seksapil/2 or x<wspol_x-seksapil/2) {hspeed = -hspeed}

if(keyboard_check_pressed(guzik))
{
	if(abs(x-wspol_x)>margines_bledu)
	{wynik=abs(x-wspol_x)/seksapil/2}
	else {wynik=100}
	hspeed=0
	alarm[0]=odstemp;
}


if keyboard_check_pressed(ord("R"))
{
	room_restart()
}