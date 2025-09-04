program gfhf;

var
  i: integer;  
  max, min, x, n: integer;
  a: array[1..20] of integer;

begin
  n := a[1];
  x := a[1];
  max := 1; 
  min := 1;  
  for i := 1 to 20 do  
  begin
    a[i] := Random(-10..10);  
  end;
  writeln('Массив а: ', a); 
  for i := 1 to 20 do
  begin
    if a[i] > x then 
    begin
      x:=a[i];
      max:= i;
    end;
    if a[i] < n then
    begin
      n:=a[i];
      min:= i;
    end;
  end;
  writeln('max: ', x, '; min: ', n);
  a[max] := n;
  a[min] := x;
  writeln('Измененный массив: ', a)
end.