program anakayam;
uses crt;
label ulang1, ulang2;
var 
    anak_ayam, sisa : integer;
    konfirmasi : char;
begin
    ulang1:
    clrscr;
    writeln ('======PROGRAM MENULIS JUMLAH ANAK AYAM=====');
    write ('Masukkan jumlah anak ayam : ');
    readln (anak_ayam);
    writeln ('===========================================');
    writeln ('Anak Ayam turun ',anak_ayam);
    writeln ('===========================================');
    while anak_ayam >= 1 do
    begin
        sisa := anak_ayam - 1;
        if anak_ayam <> 1 then
            writeln ('Anak Ayam turun ',anak_ayam,', mati satu tinggal ',sisa)
        else
            begin
            writeln ('Anak Ayam turun ',anak_ayam,', mati satu tinggal induknya');
            end;
        anak_ayam := anak_ayam - 1;
    end;
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