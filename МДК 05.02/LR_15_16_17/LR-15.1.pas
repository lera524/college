type//запись
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;
var
  student: anketa;
begin
  writeln('введите фио студента:');
  readln(student.fio);
  writeln('введите дату рождения студента (например, 01.01.2000):');
  readln(student.birth);
  writeln('введите курс студента (1-5):');
  readln(student.kurs);
  writeln('     Анкета студента    ');
  writeln('фио: ', student.fio);
  writeln('дата рождения: ', student.birth);
  writeln('курс: ', student.kurs);
end.
