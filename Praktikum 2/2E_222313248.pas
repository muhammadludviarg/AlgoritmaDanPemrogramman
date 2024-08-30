program mencari_luas_lingkaran;
uses crt;
var
    jari_jari, luas : real;
begin
    clrscr;
    writeln ('Mencari Luas Lingkaran');
    writeln ('======================');
    write ('panjang jari-jari (cm) = ');
    readln (jari_jari);
    luas := 22/7*jari_jari*jari_jari;
    write ('Luas adalah (cm2) = ', luas:1:4); // 1 jumlah karakter, 4 angka di belakang koma
end.