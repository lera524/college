var 
  i,indmax,indmin:integer; 
  f1,f2: text; 
  arr: string; 
  max,min: char;
  begin 
  randomize; 
  assign(f1,'C:\Users\anna_\OneDrive\Рабочий стол\135.txt'); 
  assign(f2,'C:\Users\anna_\OneDrive\Рабочий стол\1351.txt'); 
  rewrite(f1); 
 
  write(f1, arr);  
  write('Изначальный массив: ', arr); 
  read(arr); 
  rewrite(f2); 
  indmax:=0; 
  indmin:=0;
  max:=arr[1];
  min:=arr[1];
  for i:=1 to length(arr) do 
  begin 
    if arr[i] > max then 
      begin 
      max:=arr[i]; 
      indmax:=i; 
      end; 
    if arr[i] < min then 
      begin 
      min:=arr[i]; 
      indmin:=i; 
      end 
  end; 
  if indmax=0 then 
    indmax+=1; 
  if indmin=0 then 
    indmin+=1; 
  arr[indmax]:= min; 
  arr[indmin]:= max; 
  writeln('Ответ: ', arr); 
  begin 
    write(f2,arr); 
  end; 
  close(f1); 
  close(f2); 
  end.