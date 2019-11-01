//bialy=make_color_rgb(250,245,248)
bialy=make_color_rgb(250,204,153)
//pomarancz=make_color_rgb(255,183,0)
pomarancz=make_color_rgb(255,102,0)

global.iskry=part_type_create(); //Tworzy particla o danej nazwie
part_type_shape(global.iskry,pt_shape_spark); //Nadaje particlowi dany krztałt

//part_type_scale(global.iskry,1,0.075); //Skaluje particla
part_type_scale(global.iskry,0.75,0.1); //Skaluje particla

//part_type_size(global.iskry,1,1,0.01,0.01); //Nadaje particlowi rozmiar bazowy
part_type_size(global.iskry,1,1.8,-0.05,0.01); //Nadaje particlowi rozmiar bazowy

//part_type_speed(global.iskry,20,40,-1,0.1); //Nadaje particlowi prędkość
part_type_speed(global.iskry,20,45,-3,0.1); //Nadaje particlowi prędkość
//part_type_direction(global.iskry,0,360,0,1); //Nadaje particlowi kierunek
part_type_direction(global.iskry,0,360,0,12); //Nadaje particlowi kierunek
part_type_gravity(global.iskry,0,0); //Nadaje particlowi grawitację
part_type_orientation(global.iskry,0,0,0,0,true); //Nadaje particlowi orientację

part_type_colour2(global.iskry,bialy,pomarancz); //Nadaje particlowi kolor z losowej mieszanki tych dwóch (biały i czarny może dać wszystkie możliwe odcieni szarości)
//part_type_colour3(global.iskry, pomarancz,bialy,pomarancz); //Nadaje particlowi kolor z losowej mieszanki tych dwóch (biały i czarny może dać wszystkie możliwe odcieni szarości)

part_type_blend(global.iskry,0);

part_type_alpha2(global.iskry,1,0); //Nadaje particlowi przezroczystość startową 1 i zmienia go do przezroczystości końcowej 2

//part_type_life(global.iskry,15,30); //Nadaje particlowi długość życia losową międy podanymi wartościami
part_type_life(global.iskry,20,35); //Nadaje particlowi długość życia losową międy podanymi wartościami