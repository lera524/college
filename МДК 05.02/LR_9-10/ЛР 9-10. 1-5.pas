program lrdesitnomer1;
uses Crt;
var
  a: array[1..10] of integer;
  b: array[1..10] of integer;
  i, j, k, k1, v, s, z, c, min: integer;//глобальные
function max(x, y: integer): integer;//x,y - локальные
begin
  if x > y then max := x
  else max := y;
end;
begin
  for i := 1 to 10 do
  begin
    a[i] := random(1..20);
  end;
  for j := 1 to 10 do
  begin
    b[j] := random(1..20);
  end;
  writeln(a);
  writeln(b);
  writeln;
  k := -1;
  k1 := -1;
  for i := 1 to 10 do
  begin
    if (a[i] mod 5) = 0 then
    begin
      k := i;
      break;
    end;
  end;
  for j := 1 to 10 do
  begin
    if (b[j] mod 5) = 0 then
    begin
      k1 := j;
      break;
    end;
  end;
  if k <= k1 then
  begin
    z := a[1];
    for i := 2 to 10 do
      z := max(a[i], z);
    for i := 1 to 10 do 
      if a[i] = z then
      begin
        a[i] := 0;
        break; 
      end;
    writeln(a);    
    min := b[1];
    v := 1;
    for j := 2 to 10 do
    begin
      if min > b[j] then
      begin
        min := b[j];
        v := j;
      end;
    end;
    for j := v + 1 to 10 do
      b[j] := b[j] * 2;
    writeln(b);
  end
    else
  begin
    c := b[1];
    for j := 2 to 10 do
      c := max(b[j], c);
    for j := 1 to 10 do
      if b[j] = c then
      begin
        b[j] := 0;
        break;
      end;
    writeln(b);  
    min := a[1];
    s := 1;
    for i := 2 to 10 do
    begin
      if min > a[i] then
      begin
        min := a[i];
        s := i;
      end;
    end;
    for i := s + 1 to 10 do
      a[i] := a[i] * 2;
    writeln(a);
  end;
end.