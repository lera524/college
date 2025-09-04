var
   f: text;
   a:string;
   i:integer;
begin
assign(f,'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
rewrite(f);
for i:=1 to 10 do
    writeln(f, i);
close(f);
assign(f,'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
reset(f);
for i:=1 to 10 do 
  begin
    readln(f,a);
    writeln(a);
  end;
close(f);
end.