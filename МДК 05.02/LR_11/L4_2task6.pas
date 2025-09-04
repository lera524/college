program vfgtyh;
uses graphABC;
var i, x1, x2, y1, y2, N,j,e: integer;
   h, x,y,h1: real;
begin   
  setWindowSize(700, 700);
  x1 := 100; 
  y1 := 100;
  x2 := 600; 
  y2 := 600;
  N := 7;
  Rectangle (x1, y1, x2, y2);
  h := (x2 - x1) / (N + 1);
  x := x1 + h;
  for i:=1 to N do 
    begin
    Line(round(x), y1, round(x), y2);
    x := x + h;
  end;
  h1 := (y2 - y1) / (N + 1);
  y := y1 + h1;
  for i:=1 to N do 
    begin
    Line(x1, round(y), x2, round(y));
    y := y + h1;
  end;
  for i := 0 to 7 do
    for j := 0 to 7 do
    begin
      if (i + j) mod 2 = 0 then
        SetBrushColor(clWhite) // Белый цвет для белых клеток
      else
        SetBrushColor(clBlack); // Черный цвет для черных клеток
      
      FillRectangle(i * round(h), j * round(h), (i + 1) * round(h), (j + 1) * round(h));
    end;

end.