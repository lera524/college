program sdc;
uses graphABC;
var r,x,y:integer;
begin
  setWindowSize(1200, 700);
  setpenwidth(1);
  setpencolor(clblack);
  r:=10;
  x:=50;
  y:=50;
  while r<=150 do
  begin
    setbrushcolor(rgb(random(256), random(256), random(256)));
    circle(x,y,r);
    r:=r+15;
    x:=x+100;
    y:=y+50;
  end;
end.