Program Belajar_Prosedur;
uses crt;
var n, hasil:integer;
    function pangkat2 : integer;
    //var n, hasil:integer;
        begin
            pangkat2 := n*n;
        end;
//var n,hasil:integer;
begin
    clrscr;
    write(' N = '); readln(n);
    hasil := pangkat2;
    writeln(' Pangkat 2 dari ',n,' = ',hasil);
    readln;
end.
