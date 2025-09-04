program hbhfc;
var a,b,c,m,n,x,d: real;
begin
  writeln ('введите 3 числа');
  read (a,b,c);
  d:=b**2-4*a*c;
  if d>0 then
    begin 
    m:=(-b+sqrt(d))/(2*a);
    n:=(-b-sqrt(d))/(2*a);
    writeln ('ответ: ',m,n);
    end;
  if d=0 then
    begin
    x:=(-b)/(2*a);
  writeln ('ответ: ', x);
  end
    else writeln ('ответ: корней нет');
end.