{1. Написать программу для работы со структурой данных "Кольцевой односвязный список".
2. Структура данных должна быть реализована на основе статической памяти.
3. Работа со структурой должна осуществляться с помощью case-меню. Предусмотреть наглядную визуализацию содержимого структуры.}
uses crt;
const
  MAX_SIZE = 100;
type
  intr = record
    a: integer;
    next: integer;
  end;
var
  List: array[1..MAX_SIZE] of intr; // Массив для хранения элементов списка
  Head: integer;// Индекс головы списка
  ListSize: integer;// Текущее количество элементов в списке
  FreeList: integer;// Индекс первого свободного элемента

procedure InitializeList;
var i: integer;
begin
  Head := 0;// Список пуст
  ListSize := 0;// Нет элементов
  FreeList := 1;// Первый свободный элемент - первый элемент массива

  // Инициализируем "связность" свободных элементов
  for i := 1 to MAX_SIZE - 1 do
    List[i].next := i + 1;
  List[MAX_SIZE].next := 0; // Последний элемент указывает на 0 (конец списка свободных)
end;

function GetFreeElement: integer;
begin
  GetFreeElement := FreeList;//Freelist - список свободных элементов
  if FreeList <> 0 then
  begin
    FreeList := List[FreeList].next;// Обновляем FreeList
  end;
end;

procedure ReleaseElement(Index: integer);
begin
  List[Index].next := FreeList; // Добавляем элемент в начало списка свободных
  FreeList := Index;
  ListSize := ListSize - 1;//уменьшение счетчика элементов в списке,тк он был удален
end;

procedure NewElement;
var
  NewIndex, a, bIndex: integer;
begin
  NewIndex := GetFreeElement;
  if NewIndex = 0 then
  begin
    writeln('Нет свободных элементов.');
    readln;
    exit;
  end;

  write('Введите число: ');
  readln(List[NewIndex].a);

  if Head = 0 then // Список пуст
  begin
    Head := NewIndex;
    List[NewIndex].next := NewIndex;  // Кольцевой список
  end
  else
  begin
    // Поиск последнего элемента (индекса)
    bIndex := Head;
    while List[bIndex].next <> Head do
      bIndex := List[bIndex].next;

    // Добавление нового элемента в конец
    List[NewIndex].next := Head;
    List[bIndex].next := NewIndex;
  end;
end;

procedure look;
var
  cIndex, sIndex, i: integer;
begin
  cIndex := Head;
  if cIndex = 0 then
  begin
    writeln('Упс! Список пуст!');
    readln;
    exit;
  end;

  repeat
    writeln(List[cIndex].a);
    write('1: Далее   2: Закончить просмотр ');
    readln(i);
    case i of
      1: cIndex := List[cIndex].next; // Движение по списку вперёд
      2: break;
    end;
  until false; // Достигнут конец списка
end;

procedure DeleteElement;
var
  cIndex, prevIndex, ElementDel: integer;
  found: boolean;
begin
  if Head = 0 then
  begin
    writeln('Список пуст, удалять нечего.');
    readln;
    exit;
  end;

  write('Введите значение элемента для удаления: ');
  readln(ElementDel);

  cIndex := Head;
  prevIndex := 0;
  found := False;

  repeat
    if List[cIndex].a = ElementDel then//если такое число
    begin
      found := True;
      if cIndex = Head then //является головой списка?
      begin
        if List[cIndex].next = Head then //в списке только 1 элемент?
        begin
          Head := 0;
          ReleaseElement(cIndex);
        end
        else//список из нескольких элементов
        begin// Находим последний элемент
          prevIndex := Head;
          while List[prevIndex].next <> Head do//находит последний эл списка
            prevIndex := List[prevIndex].next;

          Head := List[cIndex].next;//новая голова
          List[prevIndex].next := Head;//последний элемент указывает на новую голову
          ReleaseElement(cIndex);//освобождаем элемент
        end;
      end
      else //удаление не первого элемента
      begin
        prevIndex := Head;//находим предыдущий элемент
        while List[prevIndex].next <> cIndex do
          prevIndex := List[prevIndex].next;
        List[prevIndex].next := List[cIndex].next;
        ReleaseElement(cIndex);
      end;

      writeln('Элемент успешно удален.');
      readln;
      exit; // Выходим после первого удаления
    end;

    if prevIndex<> cIndex then
    prevIndex := cIndex;
    
    cIndex := List[cIndex].next;
  until cIndex = Head; //достигли головы

  if not found then
  begin
    writeln('Элемент со значением ', ElementDel, ' не найден.');
    readln;
  end;
end;

function show: boolean;
var
  i: char;
begin
  show := true;
  writeln('1- Создать элемент списка ');
  writeln('2- Просмотреть весь список ');
  writeln('3- Удалить элемент из списка');
  writeln('4- Выход ');
  readln(i);
  case i of
    '1': NewElement;
    '2': look;
    '3': DeleteElement;
    '4': show := false;
  end;
end;

var
  f: boolean;
begin
  clrscr;
  InitializeList;  // Инициализация списка
  repeat
    f := show;
    clrscr;
  until not f;
end.
