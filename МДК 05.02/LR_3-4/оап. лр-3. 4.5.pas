program asdfan;

var
  n, i, m, b, num, om: integer;
  a: real;
  l: array of integer;

begin
  write('Кол-во: ');
  readln(n);
  SetLength(l, n);
  b := 0;
  num := 0;
  om := 0;
  for i := 0 to n - 1 do
  begin
    write('Введите мощность: ');
    readln(m);
    l[i] := m;
    om := om + m;
    if m > b then
    begin
      b := m;
      num := i + 1;
    end;
  end;
  writeln('Всего: ', om);
  a := om / n;
  writeln('Средняя: ', a:0:2);
  writeln('Наибольшая мощь: ', num);
end.