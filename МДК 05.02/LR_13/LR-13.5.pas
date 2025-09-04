var
  i, ind: integer; 
  f1, f2: text; 
  arr: string;

begin
 
  assign(f1, 'C:\Users\anna_\OneDrive\Рабочий стол\135.txt'); 
  assign(f2, 'C:\Users\anna_\OneDrive\Рабочий стол\1351.txt'); 
  rewrite(f1);
 
  write(f1, arr);  
  write('Изначальный массив: ', arr); 
  
  read(arr);
  rewrite(f2); 
  ind := 0; 
  for i := 2 to length(arr)-1 do 
    if (arr[i] > arr[i + 1]) and (arr[i] > arr[i - 1]) then 
      begin
      ind := i
  end; 
  write(f2, arr[ind]); 
  writeln('Последний локальный максимум: ', arr[ind]); 
  close(f1); 
  close(f2); 
end.
