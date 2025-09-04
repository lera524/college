program zad4;
var
  inputFile: TextFile;
  num: Real;
  sum: Real;
  index: Integer;

begin
  sum := 0;

  AssignFile(inputFile, 'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
  Rewrite(inputFile);
  Randomize;

  for index := 1 to 10 do
  begin
    num := Random * 100;
    WriteLn(inputFile, num:0:2);
  end;
  CloseFile(inputFile);

  AssignFile(inputFile, 'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
  Reset(inputFile);

  index := 1;

  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, num);
    
    if index mod 2 = 0 then 
      sum := sum + num;
    Inc(index);
  end;

  CloseFile(inputFile);

  WriteLn('Сумма чисел с четными индексами: ', sum:0:2);
end.