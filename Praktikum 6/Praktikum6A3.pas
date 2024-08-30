//Program Cetak Persegi Panjang ‘#’ Full
Program nested_for;
uses crt;
var
    lebar, panjang, i, j : integer;
    karakter : char;
begin
    clrscr;
    write ('Masukkan lebar = ');
    readln (lebar);
    write ('Masukkan panjang = ');
    readln (panjang);
    write ('Masukkan karakter yang diinginkan = ');
    readln (karakter);
    for i := 1 to lebar do
        begin
            for j := 1 to panjang do
                begin
                    if (i=1) or (i=lebar) or (j=1) or (j=panjang) then
                        write(karakter:2)
                    else 
                        write(' ':2);
                end;
            writeln;// agar barisnya turun ke bawah
        end;
end.

