program rtfdc;
var a,b,c: real;
begin
  writeln ('введите значения 3-х сторон треугольника');
  read (a,b,c);
  if (a>b) and (a>c) then
  begin
    if ((b+c)>a) or ((a=b) and (a=c)) then
      writeln ('треугольник существует');
  end;
  if (c>a) and (c>b) then
  begin
    if ((a+b)>c) then
    writeln ('треугольник существует');
  end;
  if (b>a) and (b>c) then
  begin
    if ((a+c)>b) then
      writeln ('треугольник существует');
  end
  else writeln('треугольник не существует');
end.