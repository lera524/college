uses Graphabc;
var 
  x0,y0,x,y,p,l,a1,b1,n:integer;
  x1,y1,a,b,k,h:real;
function f(x:real):real;
begin
  f := 1 * x ** 3 + (0) * (x ** 2) + (2) * x + (11);
end;
procedure integral(a, b: real; n: integer);
var 
  i:integer;
  absl,otn,g,s:real;
begin
  h := ((b - a) / n);
  s := 0;
  h := (b - a) / N;
  s := (f(a) + f(b)) / 2; 
   for i := 1 to N - 1 do
    s := s + f(a + i * h);
  s := s * h; 
  writeln('Интеграл равен: ', s);  
  g := (((b**4)/4 + (b**2)+11*b) - ((a**4)/4 + (a**2)+11*a));
  writeln('Ручной счет: ', g);  
  absl := abs(g - s);
  otn := absl / abs(g);  
  writeln('Абсолютная погрешность: ', absl:12:10);
  writeln('Относительная погрешность: ', otn:12:10);
end;
begin
  writeln('Введите масштаб графика: ');
  readln(p,l);
  SetWindowSize(p,l);  
  x0:=round(p/2);
  y0:=round(l/2);
  line(10,y0, p-10, y0,clgray);
  line(x0,10,x0,l-10,clgray); 
  writeln('Введите границы графика: ');
  readln(a,b);
  k:=15;  
  x1:=a;
  while x1<=b do  
    begin
    y1:=f(x1);
    x:=x0+round(x1*k);// изменненые координаты    
    y:=y0-round(y1*k);// измененные координаты
    SetPixel(x,y,clblue);    
    x1+=0.001;
  end;  
  writeln('Введите нижний, верхний интеграл и кол-во фигур:');
  readln(a1,b1,n);
  h:=((b1-a1)/n);  
  integral(a1,b1,n);
  x1:=a1;
   while x1<=b1 do
     begin
    y1:=f(x1);    
    x:=x0+round(x1*k);// изменненые координаты
    y:=y0-round(y1*k);// измененные координаты    
    line(x,y,x,y0);
     x1+=h; 
    line(x,y,(x0+round((x1)*k)),(y0-round((f(x1))*k)),clblack);
    end;
 end.