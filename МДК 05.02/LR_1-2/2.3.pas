program uyg;
var x,d,a,b,c,v:integer;
begin
  writeln ('введите 3-х значное число: ');
  read (x);
  a:=x div 100;
  b:= (x div 10) mod 10;
  c:= x mod 10;
  v:= c*100+(b*10)+a;
  d:= x-v;
  writeln (x,'-',v,'=',d,' - разность чисел');
end.