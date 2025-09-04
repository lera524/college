program gvfujyh;
var
  a1,a2,a3,a4:real;
  n,i,k,p:integer;
  a:array[1..3] of integer;
begin
  writeln('введите координату точки a1, a2, a3, a4: ');
  readln(a1,a2,a3,a4);
  for i:=1 to 3 do
    a[i] := 0;
  writeln('введите количество точек: ');
  readln(n);
  k:= 1;
  repeat
    writeln('введите координату точки ',k,': ');
    readln(p);
    if (p>=a1) and (p<=a2) then
      a[1]:=a[1] + 1;
    if (p>a2) and (p<=a3) then
      a[2]:=a[2] + 1;
    if (p>a3) and (p<=a4) then
      a[3]:=a[3] + 1;
    k:= k+ 1;
  until k>n;
  writeln('количество точек в отрезке [',a1,', ',a2,']: ',a[1]);
  writeln('количество точек в отрезке [',a2,', ',a3,']: ',a[2]);
  writeln('количество точек в отрезке [',a3,', ',a4,']: ',a[3]);
end.
