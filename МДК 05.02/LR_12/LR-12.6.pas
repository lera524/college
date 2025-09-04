var
  i, o: TextFile;
  l: string;
begin
  Assign(i, 'C:\Users\anna_\OneDrive\Рабочий стол\text6.txt');  
  Reset(i);
  
  Assign(o, 'C:\Users\anna_\OneDrive\Рабочий стол\text6-1.txt'); 
  Rewrite(o);
  
  while not Eof(i) do
  begin
    ReadLn(i, l);
    if Trim(l) <> '' then
    begin
      WriteLn(o, l); 
    end;
  end;

  CloseFile(i);   
  CloseFile(o); 
end.