x=800
y=450

global.tg[100]=100 //tablica z gruboscią danego węzła

i=100
global.tx[100]=x //tablica z pozycjami X wezlow
global.ty[100]=y //tablica z pozycjami Y wezlow

for(j=100;j>=0;j--)
{
	for(jj=0;jj<=10;jj++)
	{
	global.tp[j,jj]=0 //tablica odpowiedzialna za ilosc połączenie miedzy wezlami
	}
}

nn=100 //indeks wybranego wezla

roz=50
rozz=50

wyp=15

predkosc_rozklepywania=3
predkosc_zwiekszania_zasiegu=5

k_rozgrzanie=c_dkgray
k_miecz=c_white

klasyfikacja="sztylet"
dlo=0
waga=0

global.ox1=noone
global.ox2=noone
global.oy1=noone
global.oy2=noone

rozgrzanie=0
przegrzanie=0

kucie=true;

debug=false;

ost=0

cz[100]=false;
ot[100]=false;