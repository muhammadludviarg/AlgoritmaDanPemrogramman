Program Praktikum12A;
Uses crt;

{Function Sum(x:integer):integer; 
Var i, result: integer; 
    Begin 
    Result:=0; 
    For i:=1 to x do result:=result+i; 
    Sum:=result; 
End; 
begin
    clrscr;
    writeln (sum(5));}

function sum(x: integer):integer;
begin
    if x = 1 then sum := 1
    else sum := x + sum(x-1);
end;
begin
    clrscr;
    write (sum(5));
end.