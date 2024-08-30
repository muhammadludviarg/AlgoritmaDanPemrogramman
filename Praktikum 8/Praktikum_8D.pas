Program Belajar_Prosedur;
uses crt;
//var n, hasil:integer;
    function pangkat2(a:integer) : integer;
    //var n, hasil:integer;
        begin
            pangkat2 := a*a;
        end;
var n,hasil:integer;
begin
    clrscr;
    write(' N = '); readln(n);
    hasil := pangkat2(n);
    writeln(' Pangkat 2 dari ',n,' = ',hasil);
    readln;
end.
