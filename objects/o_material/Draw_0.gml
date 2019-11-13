//for(j=100;j>=i;j--)
//{
//	if j==nn {draw_set_color(c_yellow)}
//	else {draw_set_color(c_blue)}
//	draw_circle(tx[j],ty[j],3,0)
//}

//draw_set_color(c_white)
//draw_text(100,100,roz)

if debug==true
{
	draw_set_color(c_white)
	//draw_text(100,100,rozgrzanie)
	//draw_text(100,200,roz)
	//draw_text(100,300,g)
	draw_text(100,100,"Klasyfikacja")
	draw_text(100+string_width("klasyfikacja: "),100,klasyfikacja)
	draw_text(100,200,"Dlugosc ostrza")
	draw_text(100+string_width("Dlugosc ostrza: "),200,dlo)
	draw_text(100,300,"Waga")
	draw_text(100+string_width("Waga: "),300,waga)
}

if przegrzanie>30 {draw_sprite_ext(sprite5,0,100,400,5,5,0,c_white,1)}

draw_set_color(k_rozgrzanie)
draw_rectangle(800-global.tg[100]/4,450-global.tg[100]/4,800+global.tg[100]/4,450+global.tg[100]/4,0)

for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tp[j,jj]!=0;jj++)
	{
		draw_set_color(k_rozgrzanie)
		
		draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],global.tg[j]/4)
		draw_circle(global.tx[j],global.ty[j],global.tg[j]/7.69,0)
		
		sx=(global.tx[j]+global.tx[global.tp[j,jj]])/2;
		sy=(global.ty[j]+global.ty[global.tp[j,jj]])/2;
		sg=global.tg[j]/4;
		
		draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
		draw_rectangle(global.tx[j]-sg,global.ty[j]-sg,global.tx[j]+sg,global.ty[j]+sg,0)
		
		//draw_roundrect_ext(sx-sg,sy-sg,sx+sg,sy+sg,15,15,0)
		//draw_roundrect_ext(global.tx[j]-sg,global.ty[j]-sg,global.tx[j]+sg,global.ty[j]+sg,15,15,0)
		
		if debug==true
		{
			draw_set_color(c_blue)
			draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],5)
		}
	}
}

if debug==true
{
	for(j=100;j>=i;j--)
	{
		if j==nn {draw_set_color(c_yellow)}
		else {draw_set_color(c_blue)}
		draw_circle(global.tx[j],global.ty[j],6,0)
	}
}

if kucie==true
{
	draw_set_color(c_red)
	draw_circle(global.tx[nn],global.ty[nn],roz,1)
	draw_circle(global.tx[nn],global.ty[nn],wyp,1)
}


//draw_sprite(sprite4,0,800,450)

if kucie==false
{
	draw_rectangle_color(((nmx+nwx)/2)-32,0,((nmx+nwx)/2)+32,900,c_black,c_black,c_black,c_black,0)
}

if debug==true
{
	draw_set_color(c_orange)
	draw_line_width(global.ox1,global.oy1,global.ox2,global.oy2,10)
}

/*Tworzenie sprite z utworznoego materiału*/

if keyboard_check_pressed(vk_enter)
{
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
draw_set_color(k_miecz)
draw_rectangle(800-global.tg[100]/4,450-global.tg[100]/4,800+global.tg[100]/4,450+global.tg[100]/4,0)

for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tp[j,jj]!=0;jj++)
	{
		draw_set_color(k_miecz)
		
		draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],global.tg[j]/4)
		draw_circle(global.tx[j],global.ty[j],global.tg[j]/7.69,0)
		
		sx=(global.tx[j]+global.tx[global.tp[j,jj]])/2;
		sy=(global.ty[j]+global.ty[global.tp[j,jj]])/2;
		sg=global.tg[j]/4;
		draw_rectangle(sx-sg,sy-sg,sx+sg,sy+sg,0)
		draw_rectangle(global.tx[j]-sg,global.ty[j]-sg,global.tx[j]+sg,global.ty[j]+sg,0)
	}
}

	global.spr_custom = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	room_goto(room3)
}