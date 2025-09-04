var x: integer;
   function sum(a: integer): integer;//а-параметризация
   begin
        if (a<=1) then//база рекурсии
          a:=1
        else
          a:=a+(sum(a-1));//декомпозиция
   sum:=a;
end;
begin
writeln('число:');
readln(x);
writeln(sum(x));
end.
