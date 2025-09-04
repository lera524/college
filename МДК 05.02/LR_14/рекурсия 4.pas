procedure p(i, n: integer);//n - параметризация
begin
  if i <= n then//база рекурсии
  begin
    writeln('привет ', i); 
    p(i + 1, n); //декомпозиция
    
  end;
end;
begin
  p(1, 10);
end.