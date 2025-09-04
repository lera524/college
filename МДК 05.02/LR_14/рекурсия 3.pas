function s (a,b: integer):real;
begin
if b = 0 then//база рекурсии
    s := 1 
  else if b < 0 then//база рекурсии
    s := 1/s(a, abs(b))//a,b - параметризация,1/s(a, abs(b)) - декомпозиция
  else
    s := a * s(a, b - 1);//декомпозиция
end;
var x, y:integer;
begin
  writeln('число:');
  readln(x);
  writeln('степень:');
  readln(y);
  writeln(s(x,y));
end. 