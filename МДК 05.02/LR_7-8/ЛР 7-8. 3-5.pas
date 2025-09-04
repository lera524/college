program dfh;
var
  i, n: integer; 
  s: string;
begin
  read(s);
  n := length(s);
  for i := 1 to n - 3 do
  begin
    if (s[i] = 'x') and (s[i + 1] = 'a') and (s[i + 2] = 'b') and (s[i + 3] = 'c') then
    begin
      delete(s, i, 1);
      n := length(s);
    end;
  end;
  writeln(s);
end.