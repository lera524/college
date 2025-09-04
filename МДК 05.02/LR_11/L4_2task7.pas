uses GraphABC;
var x, y,x1,y1:integer;
begin  
setWindowSize(700, 700);
  x:=70;  
  y:= 370;
  x1:=100;  
  y1:= 400;
 repeat   
 setbrushcolor(clBlack);
  Rectangle(x,y,x1,y1); {Рисуем белую окружность}  
  SetPenColor(clgray);
  Rectangle(x,y,x1,y1);{Рисуем черную окружность}  
  x:=x+1;    {Перемещаемся немного направо}
  y:=y-1;  
  x1:=x1+1;    {Перемещаемся немного направо}
  y1:=y1-1 
  until x>300;
 repeat   
 SetbrushColor(clBlack);
  Rectangle(x,y,x1,y1); {Рисуем белую окружность}  
  SetPenColor(clgray);
  Rectangle(x,y,x1,y1);{Рисуем черную окружность}  
  x:=x+1;    {Перемещаемся немного направо}
  y:=y+1;  
  x1:=x1+1;    {Перемещаемся немного направо}
  y1:=y1+1 
  until y>370;
end.