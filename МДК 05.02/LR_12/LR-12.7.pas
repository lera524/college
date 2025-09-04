function r(num: Integer): Boolean;
var
  i: Integer;
begin
  if num < 2 then
    r := False
  else
  begin
    r := True;
    for i := 2 to Trunc(Sqrt(num)) do
    begin
      if num mod i = 0 then
      begin
        r := False;
        Break;
      end;
    end;
  end;
end;

function Sum(n: Integer): Integer;
var
  t, p, p4: Integer;
begin
  t := 0;
  p := 2;
  
  while True do
  begin
    if r(p) then
    begin
      p4 := p * p * p * p;
      if p4 > n then
        Break;
      t := t + p4;
    end;
    Inc(p);
  end;
  
  Sum := t;
end;

var
  n, result: Integer;
  i, o: Text;

begin
  Assign(i, 'C:\Users\anna_\OneDrive\Рабочий стол\text.txt'); 
  Reset(i);
  ReadLn(i, n); 
  Close(i);

  result := Sum(n); 

  Assign(o, 'C:\Users\anna_\OneDrive\Рабочий стол\text.txt'); 
  Rewrite(o);
  WriteLn(o, 'sum number to 1 do ', n, ' with 5: ', result);
  Close(o);
end.