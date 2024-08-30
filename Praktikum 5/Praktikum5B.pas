// dalam while do ada kemungkinan statemen tidak dilakukan karena kondoisinya langsung false. kalau repeat untuil pasti akan dikerjakan dulu statemennya. minimal 1 kali.
//Program Cetak Halo REPEAT-UNTIL;
Program repeat_until;
uses crt;
var 
    n:integer;
begin
    clrscr;
    n:=11;
    repeat
        writeln('HALO');
        n:=n+1;
    until n>10;
    readln;
end.
