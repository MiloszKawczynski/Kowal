//for(j=100;j>=i;j--)
//{
//	if j==nn {draw_set_color(c_yellow)}
//	else {draw_set_color(c_blue)}
//	draw_circle(tx[j],ty[j],3,0)
//}

draw_set_color(c_dkgray)

for(j=100;j>=i;j--)
{
	for(jj=0;jj<tp[j,jj]!=0;jj++)
	{
		draw_line_width(tx[j],ty[j],tx[tp[j,jj]],ty[tp[j,jj]],15)
	}
}

for(j=100;j>=i;j--)
{
	if j==nn {draw_set_color(c_yellow)}
	else {draw_set_color(c_blue)}
	draw_circle(tx[j],ty[j],6,0)
}

if keyboard_check_pressed(vk_enter)
{
	var surf;
	surf = surface_create(1600,900);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
		draw_set_color(c_dkgray)

		for(j=100;j>=i;j--)
		{
			for(jj=0;jj<tp[j,jj]!=0;jj++)
			{
				draw_line_width(tx[j],ty[j],tx[tp[j,jj]],ty[tp[j,jj]],15)
			}
		}

		for(j=100;j>=i;j--)
		{
			if j==nn {draw_set_color(c_yellow)}
			else {draw_set_color(c_blue)}
			draw_circle(tx[j],ty[j],6,0)
		}

	global.spr_custom = sprite_create_from_surface(surf, 0, 0, 1600, 900, true, false, 800, 450);
	surface_reset_target();
	surface_free(surf);
	room_goto(room1)
}