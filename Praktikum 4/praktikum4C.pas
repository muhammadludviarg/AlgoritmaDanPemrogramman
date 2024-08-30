// Program memilih menu
program praktikum4D;
uses crt;
var nomormenu : byte;
begin
    clrscr;
    writeln ('====================MENU====================');
    writeln ('  1. Input data');
    writeln ('  2. Cetak data');
    writeln ('  3. Edit data');
    writeln ('  4. Hapus data');
    writeln ('  5. Keluar program');
    writeln ('============================================');
    write ('Masukkan nomor menu yang Anda pilih (1/2/3/4/5) = ');
    readln(nomormenu);
    writeln ('============================================');
    write ('Anda memilih menu nomor ');
    case nomormenu of
        1 : writeln ('1. Input data');
        2 : writeln ('2. Cetak data');
        3 : writeln ('3. Edit data');
        4 : writeln ('4. Hapus data');
        5 : writeln ('5. Keluar program');
    else 
        writeln ('yang salah.');
    end;
end.