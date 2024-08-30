program praktikum12C;
uses crt;
procedure tulis_1(banyak: integer; kata: string);
begin
    writeln(kata, banyak);
    if banyak > 1 then
    tulis_1(banyak-1, kata);
    //writeln(kata, banyak);
end;
begin
    clrscr;
    tulis_1(5,'Cetakan ke ');
end.