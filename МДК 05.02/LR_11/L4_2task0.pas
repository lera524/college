program kkk;
uses GraphABC;
var x,y,x1,y1,y2,x2,b: integer;
a: integer;
begin
  begin
  setWindowSize(1000,600);
  x1:=50;
  y2:=50;
  a:=100;
  SetPenColor(clPurple);
  MoveTo(x1,y1);
  lineTo(x1+a,y1);
  lineTo(x1+a, y1+a);
  lineTo(x1,y1+a);
  lineTo(x1,y1);
  end;
  begin
  x2:=200;
  y2:=50;
  b:=50;
  SetPenColor(clblue);
  MoveTo(x2,y2);
  lineTo(x2+b,y2);
  lineTo(x2,y2+b);
  lineTo(x2,y2);
 end;
end.