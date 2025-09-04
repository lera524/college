procedure f(i,n: integer); //n - параметризация
  begin
       write (i+n,' ');
       if i+n<89 then//база рекурсии
           f(n, n+i)//декомпозиция
  end;
begin
  f(0,1);
end.