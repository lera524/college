program hg;

var
  r, s: real;

begin
  writeln('введите радиус круга');
  readln(r);
  s := 3.14 * (r ** 2);
  writeln('площадь круга = ', s);
end.