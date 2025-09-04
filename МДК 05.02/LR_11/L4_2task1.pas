program kkk;
uses GraphABC;
var x,y,x1,y1:integer;
begin
  setWindowSize(1000,1000);
  setpenwidth(5);
  
  Circle(200,200,100);
  FloodFill(200,200,clred);
  
  MoveTo(300,200);
  LineTo(800,200);
  lineTo(550,100);
  lineTo(300,200);
  FloodFill(550,150,clBlue);
  
   MoveTo(300,200);
  lineTo(550,300);
  lineTo(800,200);
  FloodFill(550,250,clgreen);
  
  MoveTo(800,200);
  Circle(900,200,100);
  FloodFill(900,200,clyellow);
  
end.