x=mouse_x;
y=mouse_y;

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,akceptacja_x,akceptacja_y)<=64)
{
	keyboard_key_press(vk_enter);
}

if mouse_check_button_pressed(mb_left) and (point_distance(x,y,katalog_x,katalog_y)<=64)
{
	if katalog==true {katalog=false;} else {katalog=true;}
}