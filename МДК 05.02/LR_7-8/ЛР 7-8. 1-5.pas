 program dfh;
var
  i,n: integer; 
  s: string;
begin
  read(s);
  n:=length(s);
  for i := 1 to n do
    begin
    if s[n] = s[i] then
    begin
      write(i,'  ');
    end
    else
    end;
end.