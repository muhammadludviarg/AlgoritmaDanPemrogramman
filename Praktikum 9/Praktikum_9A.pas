{Contoh program yang menunjukkan identifier lokal yang berlaku di dalam sub program tersebut saja}
Program Contoh9A;
uses crt;
var x:integer;
    procedure subpro(a:integer);
        var b:integer;
        begin
        b:=a;
        writeln(b);
        end;
    function subpro2 (c:integer):integer;
        var b:integer;
        begin
            b:=c;
            writeln(b);
        end;
begin
    clrscr;
    write(' Input nilai a= ');
    readln(x);
    subpro(x);
    {write(' Input nilai a= ');
    readln(x);}
    subpro2(x);
end.
