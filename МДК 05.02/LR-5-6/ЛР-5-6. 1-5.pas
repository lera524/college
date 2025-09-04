program gfhf;
var  
  i: integer;  
  max, max1: real;
  a: array[1..10] of real;  
  b: array[1..10] of real;

begin
  max := 0; 
  max1 := 0;  
  for i := 1 to 10 do
  begin
    a[i] := Random(-10..10);  
  end;
  writeln(a);  
  for i := 1 to 10 do
  begin
    b[i] := Random(-10..10);  
  end;
  writeln(b);
  for i := 1 to 10 do
  begin
    if a[i] > 0 then    
    begin
      max := max + a[i];    
    end;
  end;  
  for i := 1 to 10 do
  begin
    if b[i] > 0 then
    begin
      max1 := max1 + b[i];
    end;  
  end;
  if max > max1 then 
  begin
    writeln( max1:0:2);
    for i := 1 to 10 do     
    begin
      b[i] := b[i] * 10;    
    end;
    writeln(b);  
  end
  else   
    begin
    writeln(max:0:2);    
    for i := 1 to 10 do     
    begin
      a[i] := a[i] * 10;    
    end;
    writeln(a);  
  end;
end.
