//Program Cetak Persegi Panjang ‘#’ Full
Program nested_while;
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
    i := 1;
    while i <= lebar do
        begin
            j := 1;
            while j <= panjang do
                begin
                    if (i=1) or (i=lebar) or (j=1) or (j=panjang) then
                        write(karakter:2)
                    else 
                        write(' ':2);
                    j:=j + 1;
                end;
            writeln;
            i:= i + 1;
        end;
end.

