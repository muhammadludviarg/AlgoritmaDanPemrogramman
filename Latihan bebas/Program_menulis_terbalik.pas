Program menulis_terbalik;
uses crt;
label ulang1, ulang2;
var baris, i, j : integer;
    konfirmasi : string;
begin
    clrscr;
    writeln ('===============================================================');
    writeln ('========== Program menulis angka 1 sampai 9 terbalik ==========');
    writeln ('===============================================================');
    ulang1:
    write ('Masukkan banyaknya baris = ');
    readln (baris);
    writeln ('---------------------------------------------------------------');
    if baris > 0 then
        begin
            for i := 1 to baris do
                begin
                    if (i mod 2) = 1 then
                        begin
                            for j := 0 to 9 do
                            write (j:2);
                        end
                    else 
                        begin
                            for j := 9 downto 0 do
                            write (j:2);
                        end;
                    writeln;
                end;
        end
    else if baris = 0 then
        begin
            writeln ('Jumlah baris yang Anda masukkan nol, sehingga tidak ada yang ditampilkan');
        end
    else
        begin
            writeln ('Jumlah baris yang Anda masukkan tidak valid');
        end;
    writeln ('===============================================================');
    ulang2:
    write ('Apakah Anda ingin mencoba lagi?(ya/tidak)');
    readln (konfirmasi);
    case lowercase(konfirmasi) of
        'ya' : goto ulang1;
        'tidak' : write ('Terimakasih sudah menggunakan layanan ini');
    else writeln ('Masukkan Anda tidak valid'); 
        goto ulang2;
    end;
end.