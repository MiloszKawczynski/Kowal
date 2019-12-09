draw_sprite(sprite12,0,akceptacja_x,akceptacja_y);
draw_sprite(sprite121,0,katalog_x,katalog_y);

if katalog==true
{
	draw_set_color(c_black)
	draw_rectangle(575,25,1025,875,0)
	draw_set_color(c_white)
	draw_rectangle(600,50,1000,850,0)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font0)
	
	draw_text(800,75,global.katalog[11,pozycja_w_katalogu])
	draw_sprite_ext(global.katalog[0,pozycja_w_katalogu],0,800,215,0.35,0.35,0,c_white,1)
	
	draw_set_halign(fa_right)
	draw_text(995,350,global.katalog[3,pozycja_w_katalogu])
	draw_text(995,400,global.katalog[4,pozycja_w_katalogu])
	draw_text(995,450,global.katalog[5,pozycja_w_katalogu])
	draw_text(995,500,global.katalog[6,pozycja_w_katalogu])
	draw_text(995,550,global.katalog[7,pozycja_w_katalogu])
	draw_text(995,600,global.katalog[8,pozycja_w_katalogu])
	draw_text(995,650,global.katalog[9,pozycja_w_katalogu])
	draw_text(995,700,string(global.katalog[10,pozycja_w_katalogu])+"%")
	
	draw_set_halign(fa_left)
	draw_text(605,350,"Cięcie")
	draw_text(605,400,"Pchnięcie")
	draw_text(605,450,"Prędkość")
	draw_text(605,500,"Klasyfikacja")
	draw_text(605,550,"Długość ostrza")
	draw_text(605,600,"Ilość czubków")
	draw_text(605,650,"Waga")
	draw_text(605,700,"Jakość")
	
	draw_sprite(sprite1211,0,test_x,test_y);
	draw_sprite(sprite12111,0,plan_x,plan_y);
}

if zamowienie==true
{
	if (global.ilosc_broni_w_katalogu>0)
	{
		draw_set_color(c_black)
		draw_rectangle(575,25,1025,875,0)
		draw_set_color(c_white)
		draw_rectangle(600,50,1000,850,0)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_font(font0)
	
		draw_text(800,75,"Chcę miecz\nOto moje wymagania:")
		draw_text(800,150,global.katalog[11,pozycja_w_katalogu])
	
		draw_set_halign(fa_right)
		//if global.katalog[3,pozycja_w_katalogu]>=global.zlecenie[0] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,200,string(global.katalog[3,pozycja_w_katalogu])+"/"+string(global.zlecenie[0]))
		//if global.katalog[4,pozycja_w_katalogu]>=global.zlecenie[1] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,250,string(global.katalog[4,pozycja_w_katalogu])+"/"+string(global.zlecenie[1]))
		//if global.katalog[5,pozycja_w_katalogu]>=global.zlecenie[2] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,300,string(global.katalog[5,pozycja_w_katalogu])+"/"+string(global.zlecenie[2]))
		//if global.katalog[6,pozycja_w_katalogu]==global.zlecenie[3] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,350,string(global.katalog[6,pozycja_w_katalogu])+"/"+string(global.zlecenie[3]))
		draw_text(995,400,string(global.katalog[7,pozycja_w_katalogu])+"/"+string(global.zlecenie[4]))
		//if global.katalog[8,pozycja_w_katalogu]==global.zlecenie[5] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,450,string(global.katalog[8,pozycja_w_katalogu])+"/"+string(global.zlecenie[5]))
		//if abs(global.katalog[9,pozycja_w_katalogu]-global.zlecenie[6])<100 {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,500,string(global.katalog[9,pozycja_w_katalogu])+"/"+string(global.zlecenie[6]))
		//if global.katalog[10,pozycja_w_katalogu]>=global.zlecenie[7] {draw_set_color(c_lime)} else {draw_set_color(c_red)}
		draw_text(995,550,string(global.katalog[10,pozycja_w_katalogu])+"%"+"/"+string(global.zlecenie[7])+"%")
		if dodatek_placy>0 {draw_set_color(c_lime)}
		if dodatek_placy<0 {draw_set_color(c_red)}
		draw_text(995,600,string(global.zlecenie[8]+dodatek_placy))
		draw_set_color(c_black)
	
		draw_set_halign(fa_left)
		draw_text(605,200,"Cięcie")
		draw_text(605,250,"Pchnięcie")
		draw_text(605,300,"Prędkość")
		draw_text(605,350,"Klasyfikacja")
		draw_text(605,400,"Długość ostrza")
		draw_text(605,450,"Ilość czubków")
		draw_text(605,500,"Waga")
		draw_text(605,550,"Jakość")
		draw_text(605,600,"Płacę")
		
		draw_sprite(sprite121111,0,(plan_x+test_x)/2,plan_y);
	}
	else
	{
		draw_set_color(c_black)
		draw_rectangle(575,25,1025,875,0)
		draw_set_color(c_white)
		draw_rectangle(600,50,1000,850,0)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_font(font0)
	
		draw_text(800,75,"Chcę miecz\nOto moje wymagania:")
	
		draw_set_halign(fa_right)
		draw_text(995,200,string(global.zlecenie[0]))
		draw_text(995,250,string(global.zlecenie[1]))
		draw_text(995,300,string(global.zlecenie[2]))
		draw_text(995,350,string(global.zlecenie[3]))
		draw_text(995,400,string(global.zlecenie[4]))
		draw_text(995,450,string(global.zlecenie[5]))
		draw_text(995,500,string(global.zlecenie[6]))
		draw_text(995,550,string(global.zlecenie[7])+"%")
		draw_text(995,600,string(global.zlecenie[8]))
	
		draw_set_halign(fa_left)
		draw_text(605,200,"Cięcie")
		draw_text(605,250,"Pchnięcie")
		draw_text(605,300,"Prędkość")
		draw_text(605,350,"Klasyfikacja")
		draw_text(605,400,"Długość ostrza")
		draw_text(605,450,"Ilość czubków")
		draw_text(605,500,"Waga")
		draw_text(605,550,"Jakość")
		draw_text(605,600,"Płacę")
	}
}

for(nienawidze=0;nienawidze<=9;nienawidze++)
{
	if sprite_exists(global.zapisanabron[nienawidze])
	{
		if nienawidze==o_material.rodzaj_gotowca
		{
			siebie=c_lime
		}
		else
		{
			siebie=c_white
		}
		if sprite_get_xoffset(global.zapisanabron[nienawidze])>0
		{
			draw_sprite_ext(global.zapisanabron[nienawidze],0,(1600/10)*(nienawidze-0.5)+150,50,0.35,0.35,0,siebie,0.75)
		}
		else
		{
			draw_sprite_ext(global.zapisanabron[nienawidze],0,(1600/10)*(nienawidze-0.5)-(800*0.35)+150,50-(450*0.35),0.35,0.35,0,siebie,0.75)
		}
	}
}