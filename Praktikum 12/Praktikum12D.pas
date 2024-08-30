Program Praktikum12A;
Uses crt;
function sum(x: integer):integer;
begin
    if x = 1 then sum := 1
    else sum := x + sum(x-1);
end;
begin
    clrscr;
    write (sum(-5));
end.