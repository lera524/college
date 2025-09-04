program InsertEmptyLine;

var
  onefile, twofile: textfile;
  K, c: Integer;
  s: string;

begin
  writeln('Введите номер строки K:');
  readln(K);
  AssignFile(onefile, 'C:\Users\anna_\OneDrive\Рабочий стол\text52.txt');
  AssignFile(twofile, 'C:\Users\anna_\OneDrive\Рабочий стол\text51.txt');
  Rewrite(twofile);
  Reset(onefile);
  c := 0;
  while not Eof(onefile) do
  begin
    Readln(onefile, s);
    Inc(c);
    if c = K then
      Writeln(twofile); 
    Writeln(twofile, s);
  end;
  CloseFile(onefile);
  CloseFile(twofile);
  if (K > 0) and (K <= c + 1) then
    writeln('Пустая строка успешно вставлена перед строкой номер ', K)
  else
    writeln('Строки с номером ', K, ' не существует. Файл остался без изменений.');
end.