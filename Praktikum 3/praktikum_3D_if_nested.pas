program struktur_if_then_else_nested;
uses crt;
var 
    angka:integer;
begin
    clrscr;
    write('Masukkan sebuah angka bulat = ');
    readln(angka);
    if (angka mod 2 = 0) then
        begin
            write('Angka yang Anda masukkan merupakan bilangan genap ');
            if (angka >= 10) then
                begin
                     writeln('dan lebih besar dari 10');
                end
            else
                begin
                    writeln('dan lebih kecil dari 10');
                end;
        end
    else 
        begin
            write('Angka yang Anda masukkan merupakan bilangan ganjil ');
            if (angka >= 10) then
                begin
                     writeln('dan lebih besar dari 10');
                end
            else
                begin
                    writeln('dan lebih kecil dari 10');
                end;
        end;
    readln;
end.

