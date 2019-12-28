if (wrot==0)
{
	przesuniecie_x+=1*xs;
	if (przesuniecie_x<0) {wrot=1; px=0;}
	alarm[1]=1;
}

if (wrot==1)
{
	przesuniecie_x-=1*xs;
	if (przesuniecie_x==15) {alarm[1]=-1;} else {alarm[1]=1;}
}