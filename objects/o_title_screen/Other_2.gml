if !file_exists("Katalog_broni.txt")
{
	var file;
	file=file_text_open_write("Katalog_broni.txt");
	file_text_write_real(file,"0");
	file_text_close(file);
}
else
{
	var file;
	file=file_text_open_read("Katalog_broni.txt");
	global.ilosc_broni_w_katalogu=file_text_read_real(file);
	for(f=0;f<=global.ilosc_broni_w_katalogu;f++)
	{
		global.katalog[0,f]=file_text_read_real(file);
		global.katalog[1,f]=file_text_read_real(file);
		global.katalog[2,f]=file_text_read_real(file);
		global.katalog[3,f]=file_text_read_real(file);
		global.katalog[4,f]=file_text_read_real(file);
		global.katalog[5,f]=file_text_read_real(file);
		global.katalog[6,f]=file_text_read_real(file);
		global.katalog[7,f]=file_text_read_real(file);
		global.katalog[8,f]=file_text_read_real(file);
		global.katalog[9,f]=file_text_read_real(file);
		global.katalog[10,f]=file_text_read_real(file);
	}
	file_text_close(file);
}