function p(a, x: integer): integer;//a,x - параметризация
begin
  if x = 0 then//база рекурсии
    p := a
  else
    p := p(x, a mod x);//декомпозиция
  writeln(a,'  ', x);
end;
var
  n, m, r: integer;
begin
  n := 3430;
  m := 1365;
  r := p(n, m);
  writeln('наибольший общий делитель ', n, ' и ', m, ' равен ', r);
end.