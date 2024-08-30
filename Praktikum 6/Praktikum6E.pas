program jumlah_bilangan_ganjil;
uses crt;
var angka, i, bil, jumlah : integer;
begin
    clrscr;
    write ('Masukkan jumlah bilangan N = ');
    readln (angka);
    jumlah := 0;
    for i := 1 to angka do
        begin
            write ('Masukkan bilangan ke-', i ,' : ');
            readln (bil);
            if (bil mod(2) = 0) then continue;
            jumlah := jumlah + bil;
        end;
    writeln ('Jumlah bilangan ganjil = ', jumlah);
end.