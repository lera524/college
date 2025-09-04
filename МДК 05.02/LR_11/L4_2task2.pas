program kkk;
uses GraphABC;
begin
  setWindowSize(1000,600);
  setpenwidth(2);

  brush.Color:=clred;
  MoveTo(400,500);
  LineTo(500,100);
  lineTo(600,500);
  lineTo(400,500);
  FloodFill(500,300,clred);
  
  MoveTo(300,500);
  LineTo(150,150);
  lineTo(427,390);
  lineTo(400,500);
  lineTo(300,500);
  FloodFill(250,300,clBlue);
  
  MoveTo(573,390);
  lineTo(850,150);
  lineTo(700,500);
  lineTo(600,500);
  lineTo(573,390);
  FloodFill(750,300,clgreen);
  
  Circle(150,150,30);
  FloodFill(150,151,clBlue);

  Circle(850,150,30);
  FloodFill(850,151,clgreen);

  brush.Color:=clred;
  Circle(500,100,30);
  FloodFill(525,101,clred);
  
  brush.Color:=clred;
  MoveTo(400,500);
  LineTo(525,100);
  lineTo(650,500);
  lineTo(400,500);
  FloodFill(500,300,clred);
end.