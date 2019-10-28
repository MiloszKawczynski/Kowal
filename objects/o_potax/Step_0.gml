global.iskry_sys = part_system_create();
if mouse_check_button_pressed(mb_left)
{
		part_particles_create(global.iskry_sys,mouse_x,mouse_y,global.iskry,500);
}