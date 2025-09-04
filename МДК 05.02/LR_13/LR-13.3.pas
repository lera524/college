var
  inputFile, oddFile, evenFile: TextFile;
  number: Real;
  index: Integer;

begin
  AssignFile(inputFile, 'C:\Users\anna_\OneDrive\Рабочий стол\13 3.txt');
  Rewrite(inputFile);
  for index := 1 to 10 do
  begin
    WriteLn(inputFile, index); 
  end;
  CloseFile(inputFile);
  AssignFile(inputFile, 'C:\Users\anna_\OneDrive\Рабочий стол\13 3.txt');
  AssignFile(oddFile, 'C:\Users\anna_\OneDrive\Рабочий стол\13 3(1).txt');
  AssignFile(evenFile, 'C:\Users\anna_\OneDrive\Рабочий стол\13 3(2).txt');
  Reset(inputFile);
  Rewrite(oddFile);
  Rewrite(evenFile);
  index := 1;
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, number);
    if index mod 2 = 1 then
      begin
      WriteLn(oddFile, number);
      end
    else
      begin
      WriteLn(evenFile, number); 
      end;
    Inc(index);
  end;
  CloseFile(inputFile);
  CloseFile(oddFile);
  CloseFile(evenFile);
end.