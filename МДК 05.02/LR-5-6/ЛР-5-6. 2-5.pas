program gfhf;

var
  i, j, maxCount, mostFrequent: integer;
  a: array[1..10] of integer;
  c: array[1..10] of integer;
begin
  for i := 1 to 10 do
  begin
    a[i] := Random(-10..10);
  end;  
  writeln(a);

  for i := 1 to 10 do
  begin
    for j := i to 10 do
    begin
      if a[i] = a[j] then
        c[i] := c[i] + 1;
    end;
  end;
  maxCount := c[1];
  mostFrequent := a[1];

  for i := 2 to 10 do
  begin
    if (c[i] > maxCount) then
    begin
      maxCount := c[i];
      mostFrequent := a[i];
    end;
  end;
  writeln('Наиболее часто повторяющееся число: ', mostFrequent);
end.