direction-=szybkosc_ciecia*xs
	
if szybkosc_ciecia<granica_ciecia and stan_ciecia==0 {szybkosc_ciecia+=spe_c} else {stan_ciecia=1}
if stan_ciecia==1 and szybkosc_ciecia>=0 {szybkosc_ciecia-=opuznienie_ciecia}
	
if(szybkosc_ciecia>0)
{alarm[0]=1}
else
{
	stan_ciecia=0;
	szybkosc_ciecia=1;
	alarm[0]=-1;
	swordsman.ruch=5;
}