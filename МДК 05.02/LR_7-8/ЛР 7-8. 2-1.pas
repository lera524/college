program dcdcw;
var
  i,n:integer;
  sum, sum1:real;
  s:string;
  begin
    sum:=0;
    sum1:=0;
    read(s);
    n:=length(s);
    for i:=1 to n do
    begin
      if (s[i]='+') or (s[i]='-') then
      begin
        sum:=sum+1;
      end;
      if s[i] ='0' then
      begin
        sum1:=sum1+1;
      end;
    end;
    writeln('сумма + и -: ',sum);
    writeln('сумма 0: ',sum1);
  end.