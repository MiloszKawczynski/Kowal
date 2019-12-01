if(x>wspol_x+seksapil/2 or x<wspol_x-seksapil/2) {hspeed = -hspeed}

if(keyboard_check_pressed(guzik))
{
	global.jakosc=25-((abs(x-wspol_x)/seksapil/2)*100)
	hspeed=0
	alarm[0]=odstemp;
}


if keyboard_check_pressed(ord("R"))
{
	room_restart()
}

if zapisywanie_nazwy==true
{
	room_goto_next()
}