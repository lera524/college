program kkk;
uses GraphABC;
var
  d: integer;
begin
  setWindowSize(1000, 600);
  setpenwidth(1);
  setpencolor(clblack);
  d:=50;
  while d<=290 do 
  begin
    setbrushcolor(rgb(random(256), random(256), random(256)));
    circle(d,100,10);
    d:=d+30;
  end;
end.