type
    toy = record
        name: string;
        price: real;
        age: string;
    end;
var
    toys: array[1..3] of toy;
    i: integer;
begin
    with toys[1] do
    begin
        name := 'мягкая игрушка';
        price := 1000;
        age := '0-5 лет';
    end;
    with toys[2] do
    begin
        name := 'мячик';
        price := 600;
        age := '3-12 лет';
    end;
    with toys[3] do
    begin
        name := 'кукла';
        price := 1500;
        age := '5-10 лет';
    end;
    writeln('Доступные игрушки:');
    writeln;
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
end.