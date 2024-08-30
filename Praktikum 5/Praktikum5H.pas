program menulis_bintang;
uses crt;
var 
    x, y, banyak_bilangan : integer; // x adalah counter untuk banyaknya baris, y adalah counter untuk banyaknya kolom.
begin
    clrscr;
    writeln ('=============PROGRAM MEMBUAT BINTANG SEGITIGA SIKU-SIKU=============');
    write ('Masukkan bilangan bulat n (tinggi dan alas segitiga siku-siku) = ');
    readln (banyak_bilangan);
    writeln ('====================================================================');
    x := 1;
    while x <= banyak_bilangan do
        begin
            y := 1;
            while y <= banyak_bilangan do
            begin
                if y <= x then
                    write ('*':2)
                else write (' ':2);
                y := y + 1;
            end;
            writeln;
            x := x + 1;
        end;
end.