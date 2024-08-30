Program penentuan_musim;
uses crt;
{=============================SUB PROGRAM==========================}
    procedure garis;
    const 
        Strip = '-';
        Panjang_Garis = 105;
    var
        i : integer;
        begin
            For i := 1 to Panjang_Garis do 
                Write (Strip);
            writeln;
        end;
{============================MAIN PROGRAM==========================}
label 
    ulang_1, ulang_2;
type 
    bulan = (Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember);
    musim = (dingin, semi, panas, gugur);
var 
    bulan_ini : bulan;
    konfirmasi : char;
    jenis_musim : musim;
begin
    ulang_1:
    clrscr;
    garis;
    writeln ('LAYANAN MENENTUKAN JENIS MUSIM SUATU BULAN');
    garis;
    writeln ('Bulan : Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember');
    write ('Masukkan bulan saat ini : ');
    readln (bulan_ini);
    case ord(bulan_ini) of
        11, 0, 1 : jenis_musim := Dingin;
        2, 3, 4  : jenis_musim := Semi;
        5, 6, 7  : jenis_musim := Panas;
        8, 9, 10 : jenis_musim := Gugur;
    //else ('Masukkan Anda tidak valid. Coba lagi!'); goto ulang_1;
    end;
    garis;
    writeln ('Anda berada di musim ', jenis_musim);
    ulang_2:
    garis;
    write ('Apakah Anda ingin menggunakan layanan ini lagi? (y/t) : ');
    readln (konfirmasi);
    garis;
    case lowercase(konfirmasi) of
        'y' : goto ulang_1;
        't' : 
        begin 
            writeln ('Terimakasih telah menggunakan layanan ini.');
            writeln ('Semoga hari Anda menyenangkan!');
        end;
    else write ('Masukkan Anda tidak valid. Coba ulangi lagi dengan benar! (y/t) : '); goto ulang_2;
    end;
    garis;
end.