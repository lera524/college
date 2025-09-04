program sdc;
uses graphABC;
var r:integer;
begin
  setWindowSize(1000, 1000);
  setpenwidth(1);
  setpencolor(clblack);
  r:=300;
  while r>=10 do
  begin
    setbrushcolor(rgb(random(256), random(256), random(256)));
    circle(500,300,r);
    r:=r-15;
  end;
end.