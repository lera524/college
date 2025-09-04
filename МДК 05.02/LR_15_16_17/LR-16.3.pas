type
  PNode = ^Node;
  Node = record
    value: integer;
    next: PNode;
  end;
var
  Head: PNode;
function CreateNode(NewValue: integer): PNode;
var
  NewNode: PNode;
begin
  New(NewNode);
  NewNode^.value := NewValue;
  NewNode^.next := nil;
  Result := NewNode;
end;
procedure AddLast(var Head: PNode; NewNode: PNode);
var
  pp: PNode;
begin
  if Head = nil then
    Head := NewNode
  else
  begin
    pp := Head;
    while pp^.next <> nil do
      pp := pp^.next;
    pp^.next := NewNode;
  end;
end;
procedure PrintList(Head: PNode);
var
  pp: PNode;
begin
  pp := Head;
  while pp <> nil do
  begin
    write(pp^.value, ' ');
    pp := pp^.next;
  end;
  writeln;
end;
procedure PrintEvenElements(Head: PNode);
var
  pp: PNode;
begin
  pp := Head;
  while pp <> nil do
  begin
    if pp^.value mod 2 = 0 then
      write(pp^.value, ' ');
    pp := pp^.next;
  end;
  writeln;
end;
var
  i, x: integer;
  NewNode: PNode;
begin
  Head := nil;

  for i := 1 to 10 do
  begin
    NewNode := CreateNode(i);
    AddLast(Head, NewNode);
  end;
  writeln('whole list:');
  PrintList(Head);
  writeln('even elements of list:');
  PrintEvenElements(Head);
end.
