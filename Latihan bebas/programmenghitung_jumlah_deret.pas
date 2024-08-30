program menghitung_jumlah_deret;
uses crt;
label ulang1, ulang2;
var 
    i, tanda, N : integer;
    x, jumlah : real;
    konfirmasi : string;
begin
    ulang1:
    clrscr;
    writeln ('======Program menghitung jumlah deret======');
    writeln ('===========================================');
    write ('masukkan bilangan ganjil positif N = '); readln(N);
    writeln ('===========================================');
    i := 1;
    tanda := 1;
    jumlah := 0;
    while i <= N do
    begin
        x := 1/i*tanda;
        jumlah := jumlah + x;
        if (i = 1) and (x > 0) then
            write (i)
        else if (i <> 1) and (x > 0) then
            write (' + 1/', i)
        else write (' - 1/',i);
        i := i + 2;
        tanda := tanda*-1;
    end;
    writeln (' = ',jumlah:4:2);
    writeln ('===========================================');
    ulang2:
    write ('Apakah Anda akan emnggunakan program ini lagi? (Y/T) = ');
    readln (konfirmasi);
    case lowercase(konfirmasi) of
        'y' : goto ulang1;
        't' : writeln ('Terimakasih sudah menggunakan layanan ini.');
    else writeln ('masukkan Anda tidak valid. Coba masukkan lagi dengan satu huruf saja. Y atau T '); goto ulang2;
    end;
end.