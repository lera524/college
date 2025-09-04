procedure p(n:integer);//n - параметризация
begin
     if n >=1 then //базовый случай
       begin
        
        p(n-2);//декомпозиция
        write (n, ' ');
     end;
end;
begin
    p(25);
end.
//объем - 14
//глубина - 14