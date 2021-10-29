int cmmdc(int a, int b )
{
  if (a % b ==0)
    return b;
  else
    return cmmdc(b, a % b);
}

cmmdc(a,b) = cmmdc(b, a%b), daca a%b !=0
cmmdc(a,b)= b, daca a%b==0;
while(a%b !=0)
{r=a%b;
a=b;
b=r;
}


int cmmdc1(int a, int b )
{
  if (a == b )
    return b;
  else
   if (a>b )
    return cmmdc1(a-b,b);
   else
    return cmmdc1(a,b-a);
}

///for(i=a;i>=1;i--)
///    if(a%i==0 && b%i==0)
 ///         return i;
int cmmdc2(int a, int b, int i)
{
  if( i>=1)
  if(a%i==0  && b %i==0)
      return i;
   else
      return cmmdc2(a,b,i-1);
  }
}
cout <<cmmdc2(a, b,a)
int cmmmc(int x, int y, int a, int b )
{
  if (x == y )
    return x;
  else
   if (x<y )
    return cmmmc(x+a, y,a,b);
   else
    return cmmmc(x, y+b,a,b);
}
