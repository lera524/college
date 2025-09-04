const
  MAXSIZE = 50;
type//стек - один вход и один выход, Особенность: первый зашел, последний вышел
  Stack = record
    tags: array[1..MAXSIZE] of integer;
    size: integer; // число элементов
  end;
procedure Push(var S: Stack; x: integer);
begin
  if S.size = MAXSIZE then Exit; // выход, если произошло переполнение стека
  S.size := S.size + 1;
  S.tags[S.size] := x; // добавляем элемент
end;
function Pop(var S: Stack): integer;
begin
  if S.size = 0 then begin
    Result := -1; // -1 - ошибка, стек пуст
    Exit;
  end;
  Result := S.tags[S.size];
  S.size := S.size - 1;
end;
function isEmptyStack(S: Stack): Boolean;
begin
  Result := (S.size = 0);
end;
var
  S: Stack;
  num: integer;
  i, f: Text;
begin
  S.size := 0;
  AssignFile(i, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text.txt');
  Reset(i);  
  while not EOF(i) do
  begin
    ReadLn(i, num);
    Push(S, num);
  end;  
  CloseFile(i);
  AssignFile(f, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text1.txt');
  Rewrite(f);
  while not isEmptyStack(S) do
  begin
    num := Pop(S);
    WriteLn(f, num);
  end;
  CloseFile(f);  
  WriteLn('Числа успешно записаны в обратном порядке в файл C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text1.txt');
end.
