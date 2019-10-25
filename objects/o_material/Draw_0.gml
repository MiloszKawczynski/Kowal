//for(j=100;j>=i;j--)
//{
//	if j==nn {draw_set_color(c_yellow)}
//	else {draw_set_color(c_blue)}
//	draw_circle(tx[j],ty[j],3,0)
//}

draw_set_color(c_dkgray)
draw_circle(global.tx[nn],global.ty[nn],roz,1)
draw_circle(800,450,13,0)

for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tp[j,jj]!=0;jj++)
	{
		draw_set_color(c_dkgray)
		draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],global.tg[j]/4)
		draw_circle(global.tx[j],global.ty[j],global.tg[j]/7.69,0)
		draw_set_color(c_blue)
		draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],5)
	}
}

for(j=100;j>=i;j--)
{
	if j==nn {draw_set_color(c_yellow)}
	else {draw_set_color(c_blue)}
	draw_circle(global.tx[j],global.ty[j],6,0)
}

if keyboard_check_pressed(vk_enter)
{
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
		for(j=100;j>=i;j--)
{
	for(jj=0;jj<global.tp[j,jj]!=0;jj++)
	{
		draw_set_color(c_dkgray)
		draw_line_width(global.tx[j],global.ty[j],global.tx[global.tp[j,jj]],global.ty[global.tp[j,jj]],global.tg[j]/4)
		draw_circle(global.tx[j],global.ty[j],global.tg[j]/7.69,0)
	}
}

draw_set_color(c_dkgray)
draw_circle(800,450,13,0)

	global.spr_custom = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	room_goto(room1)
}