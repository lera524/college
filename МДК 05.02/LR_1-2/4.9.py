a=int(input("введите значение стороны: "))
b=int(input("введите значение стороны: "))
m=int(input("введите значение стороны: "))
if (a>b) and (a>m) :
    if ((b+m)>a) or ((a==b) and (a==m)):
        print("треугольник существует")
    else:
        print("треугольник не существует")
elif (m>a) and (m>b):
    if ((a+b)>m) or ((a==b) and (a==m)):
        print("треугольник существует")
    else:
        print("треугольник не существует")
elif (b>a) and (b>m) or ((a==b) and (a==m)):
    if ((a+m)>b):
        print("треугольник существует")
    else:
        print("треугольник не существует")