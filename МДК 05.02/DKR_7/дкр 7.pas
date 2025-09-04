uses graphabc, Module;
var p, dx, dy: integer;
procedure redraw();
begin
  clearwindow();
  var r := window.center;
  moveto(r.x + dx, r.y + dy);
  drawfractal(r.x + dx, r.y + dy, p);
end;
procedure keydown(key: integer);
begin
  case key of
    VK_Left:  dx := dx - 20;  
    VK_Right: dx := dx + 20; 
    VK_Up:    dy := dy - 20; 
    VK_Down:  dy := dy + 20; 
    VK_Z:  p := p + 1; 
    VK_X:  p := p - 1; 
    VK_Insert: u := u + 5;
    VK_Delete: u := u - 5; 
  end;
  redraw; 
end;
begin
  onkeydown := keydown; 
  p := 2;
  dx := -100;
  dy := -100;
  redraw;
end.
