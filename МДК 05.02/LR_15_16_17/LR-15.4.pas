type
    toy = record
        name: string[50];
        price: real;
        age: string[8];
    end;
var
    toys: array[1..3] of toy;
    i: integer;
    file1: text;
begin
    with toys[1] do
    begin
        name := 'myagkay toy';
        price := 1000;
        age := '0-5 let';
    end;
    with toys[2] do
    begin
        name := 'boll';
        price := 600;
        age := '3-12 let';
    end;
    with toys[3] do
    begin
        name := 'doll';
        price := 1500;
        age := '5-10 let';
    end;
    assign(file1, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text.txt');
    rewrite(file1, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text.txt');
    for i := 1 to 3 do
    begin
        write(file1, toys[i]);
    end;
    closeFile(file1);
    assignFile(file1, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text.txt');
    reset(file1, 'C:\Users\anna_\OneDrive\Рабочий стол\паскаль\text.txt');
    writeln('Доступные игрушки из файла:');
    for i := 1 to 3 do
    begin
        with toys[i] do
        begin
            writeln('Название: ', name);
            writeln('Цена: ', price:0:2, ' руб.');
            writeln('Возрастной диапазон: ', age);
            writeln;
        end;
    end;
    closeFile(file1);
end.
