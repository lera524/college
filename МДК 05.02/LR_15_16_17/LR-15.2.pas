type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;
var
  students: array[1..10] of anketa;
  i, n: integer;
begin
  writeln('введите количество студентов (максимум 10):');
  readln(n);
  if (n < 1) or (n > 20) then
  begin
    writeln('ошибка: количество студентов должно быть от 1 до 10.');
    exit;
  end;
  for i := 1 to n do
  begin
    writeln('введите фио студента ', i, ':');
    readln(students[i].fio);
    writeln('введите дату рождения студента ', i, ' (например, 01.01.2000):');
    readln(students[i].birth);
    writeln('введите курс студента ', i, ' (1-5):');
    readln(students[i].kurs);
  end;
  writeln('    Анкеты студентов    ');
  for i := 1 to n do
  begin
    writeln('студент ', i, ':');
    writeln('фио: ', students[i].fio);
    writeln('дата рождения: ', students[i].birth);
    writeln('курс: ', students[i].kurs);
    writeln; 
  end;
end.
