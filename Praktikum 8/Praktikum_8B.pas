Program Belajar_Prosedur;
uses crt;
var n, hasil:integer;
    procedure pangkat2(var a : integer);
        begin
            hasil := a*a;
        end;
begin
    clrscr;
    write(' N = '); readln(n);
    pangkat2(n);
    writeln(' Pangkat 2 dari ',n,' = ',hasil);
    readln;
end.
