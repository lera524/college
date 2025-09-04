var N,K,i,j: integer;
a: string;
f: text;
begin
  readln(N);
  readln(K);
  assign(f,'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
  rewrite(f);
  for i:=1 to N do
      begin   
    writeln(f, K*'*');
      end;
  close(f);
end.