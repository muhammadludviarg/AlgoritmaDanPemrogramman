{uses crt;
type colorcomp = (cyan, magenta,  yellow);
var mycolor, yourcolor : colorcomp;
begin
    clrscr;
    writeln (magenta);
end.}

uses crt;
type range1 = 1..100 div 2;
var angka1 : range1;
begin
    clrscr;
    angka1 := 52;
    writeln(angka1);
end.