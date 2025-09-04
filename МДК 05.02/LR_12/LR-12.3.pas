var
  s: string;
  f: text;
  begin
    readln(s);
    assign(f,'C:\Users\anna_\OneDrive\Рабочий стол\text.txt');
    Append (f);
    writeln(f,s);
     close(f);
  end.
