program ffewkc;
var i, n:integer;
begin
  writeln('введите до какого числа');
  readln(n);
  for i:=1 to n do
  begin
    if (i mod 2)<>0 then
      begin
      writeln(i,' ',i*i:8);
      end;
  end;
end.