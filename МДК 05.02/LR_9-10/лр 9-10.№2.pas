program lrdesitnomer2;
uses Crt;
var
  A: array[1..8, 1..8] of integer;
  i, j, sum, k, z: integer;
  b: array[1..8] of integer;

function max(x, y: integer): integer;
var
  i, j: integer;
  z: real;
begin
  if x > y then max := x
  else max := y;
end;

begin
  for j := 1 to 8 do
  begin
    for i := 1 to 8 do
    begin
      A[i, j] := random(1..8);
    end;
  end;
  for j := 1 to 8 do
  begin
    for i := 1 to 8 do
      write(A[i, j]:4);
    writeln;
  end;
  for j := 1 to 8 do 
  begin
    sum := 0;
    z := A[1, 1];
    for i := 1 to 8 do 
    begin
      z := max(A[i, j], z); 
    end;
    for i := 1 to 8 do
    begin
      if z = A[i, j] then
      begin
        sum := sum + 1;
      end;
    end;
    if sum = 1 then
    begin
      b[j] := 1;
    end
    else b[j] := -1;
  end;
  writeln(b);
end.