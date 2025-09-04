program zadaca5;

var
  i, o: TextFile;
  n, min, max: Integer;
  firstRead: Boolean;

begin
  Assign(i, 'C:\Users\anna_\OneDrive\Рабочий стол\text5.txt');
  Reset(i);
  
  firstRead := True;
  
  while not Eof(i) do
  begin
    ReadLn(i, n);
    
    if firstRead then
    begin
      min := n;
      max := n;
      firstRead := False;
    end
    else
    begin
      if n < min then
        min := n;
      if n > max then
        max := n;
    end;
  end;

  CloseFile(i);

  AssignFile(o, 'C:\Users\anna_\OneDrive\Рабочий стол\text5-1.txt');
  Rewrite(o);
  
  WriteLn(o, 'minNumber: ', min);
  WriteLn(o, 'maxNumber: ', max);

  CloseFile(o);
end.