n=1600
nn=noone

for(j=100;j>=i;j--)
{
	if point_distance(tx[j],ty[j],mouse_x,mouse_y)<n
	{
		n=point_distance(tx[j],ty[j],mouse_x,mouse_y)
		nn=j
	}
}

if mouse_check_button_pressed(mb_left)
{
	i--
	tx[i]=mouse_x
	ty[i]=mouse_y
	for(j=0;tp[i,j]!=0;j++)
	{
	}
	tp[i,j]=nn
}