program gdtfv;
var b, a, i: Integer;
begin
  write('Введите  ');
  readLn(b);
  write('Введите минут: ');
  readLn(a);
  i:=0;
  while i<a do
  begin
    b:=b*2;
    i:=i+1;
  end;
  writeLn('Количество бактерий через ', a, ' минут: ', b);
end.
