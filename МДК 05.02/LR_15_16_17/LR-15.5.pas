﻿var
  year: integer;
  ending: string;
begin
  write('введите количество лет: ');
  readLn(year);
  if (year mod 100) in [11, 12, 13, 14] then
    ending := 'лет'
  else
  begin
    case year mod 10 of
      1: ending := 'год';
      2, 3, 4: ending := 'года';
      else ending := 'лет';
    end;
  end;
  writeLn(year, ' ', ending);
end.
