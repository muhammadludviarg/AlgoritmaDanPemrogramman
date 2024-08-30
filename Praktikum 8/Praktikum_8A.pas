Program Belajar_Prosedur;
uses crt;
var n,hasil:integer;
procedure pangkat2;
    begin
        hasil := n*n;
    end;
begin
    clrscr;
    write(' N = '); readln(n);
    pangkat2;
    writeln(' Pangkat 2 dari ',n,' = ',hasil);
    readln;
end.
