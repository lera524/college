var
  filec, filec1: file of char;
  i: integer;
  c: char;
begin
  assign(filec, 'C:\Users\anna_\OneDrive\Рабочий стол\text7.txt');
  assign(filec1, 'C:\Users\anna_\OneDrive\Рабочий стол\text71.txt');
  
  reset(filec);
  rewrite(filec1);
  i := 1;
  while i <> filesize(filec) do
  begin
    read(filec, c);
    write(filec1, c);
    Write(c);
    i += 1;
  end;
  
 i:=0;
  while i <> filesize(filec) do
  begin
    if i mod 2 <> 0 then
    begin
      Seek(filec1, i);
      Write(filec1, '!');
    end;
    i += 1;
  end;
  close(filec);
  close(filec1);
  writeln();
  
  reset(filec1);
  i := 0;
  while i <> filesize(filec1) do
  begin
    read(filec1, c);
    write(c);
    i += 1;
  end;
  close(filec1);
end.