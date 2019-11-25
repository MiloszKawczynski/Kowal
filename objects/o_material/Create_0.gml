x=800
y=450

global.tablicagrubosc[100]=100 //tablica z gruboscią danego węzła

i=100
global.tablicapozycjix[100]=x //tablica z pozycjami X wezlow
global.tablicapozycjiy[100]=y //tablica z pozycjami Y wezlow

for(j=100;j>=0;j--)
{
	for(jj=0;jj<=10;jj++)
	{
	global.tablicapolaczen[j,jj]=0 //tablica odpowiedzialna za ilosc połączenie miedzy wezlami
	}
}

indeks_wybranego_wezla=100 //indeks wybranego wezla

roz=50
rozz=50

wyp=15

predkosc_rozklepywania=3
predkosc_zwiekszania_zasiegu=5

k_rozgrzanie=c_dkgray
k_miecz=c_ltgray

klasyfikacja="sztylet"
dlugosc_ostrza=0
waga=0

global.ox1=noone
global.ox2=noone
global.oy1=noone
global.oy2=noone

rozgrzanie=0 //zmienna sprawdzajaca poziom rozgrzania
przegrzanie=0 //zmienna sprawdzajaca czas przegrzania

kucie=true;

szablon=false;

gotowiec=false;

debug=false;

ost=0

cz[100]=false;
ot[100]=false;

global.zapisanabron=sprite_add("zapisana.png",1,false,false,800,450);
global.szablon=sprite_add("szablon.png",1,false,false,800,450);