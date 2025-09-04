program ahsfdi;
var n,m,k: real;
begin
  writeln('ХВАТИТ ЛИ МЕДВЕДЮ МЁДА???');
  writeln('введите сколько банок мёда нужно медведю: ');
  read(n);
  writeln('введите сколько литров мёда в банке: ');
  read(m);
  writeln('введите сколько минимум нужно мёда медведю: ');
  read(k);
  if (n*m)<k then
  begin 
    writeln('NO');
  end
  else writeln('YES');
end.