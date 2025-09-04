type
  t_chs = set of Char;
const
  lett: t_chs = ['a'..'z', 'A'..'Z', '5_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: byte;
  flag: boolean;
begin
  flag := true; 
  write('введите строку: ');
  readLn(str);
  if not (str[1] in lett) then
    flag := false;
  for i := 2 to Length(str) do
  begin
    if not (str[i] in lett + num) then
    begin
      flag := false;
      break; 
    end;
  end;
  if flag then
    writeLn('true')
  else
    writeLn('false');
end.
