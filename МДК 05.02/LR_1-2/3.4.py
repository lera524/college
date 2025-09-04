a=int(input("введите a "))
b=int(input("введите b "))
c=int(input("введите c "))
d=b**2-4*a*c
from math import sqrt
if d>0:
    m=(-b+sqrt(d))/(2*a)
    n=(-b-sqrt(d))/(2*a)
    print("ответ: ",m,n)
if d==0:
    x=(-b)/(2*a)
    print("ответ: ",x)
else:
    print("ответ: корней нет")