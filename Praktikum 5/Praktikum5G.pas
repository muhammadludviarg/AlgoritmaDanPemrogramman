program tabel_harga_fotokopi;
uses crt;
const 
    harga_lembar = 125; //konstanta harga_lembar adalah harga kertas per lembar.
var 
    lembar, i : byte; // variabel lembar dan counter i dipilih tipe data byte karena jamgkauan nilai tipe data byte (0 sampai 255) sudah mencakup jumlah lembar 1-100.
    harga : longint;
begin
    clrscr;
    writeln (' ___________________________');
    writeln ('|    TABEL HARGA FOTOKOPI   |');
    writeln ('|-------------|-------------|');
    writeln ('|    LEMBAR   |    HARGA    |');
    writeln ('|-------------|-------------|');
    i := 1;
    repeat
        harga := i * harga_lembar;
        writeln ('|',i:7,'|':7,harga:9,'|':5);
        i := i + 1;
    until (i > 100);
    writeln ('|_____________|_____________|');
end.