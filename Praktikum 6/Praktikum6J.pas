//Program 6 J
program menentukan_bilangan_prima;
uses crt;
label 
    ulang, ulangi;
var 
    X, Faktor, Jum_Faktor : integer;
    konfirmasi : string;
begin
    clrscr;
    writeln ('=============PROGRAM MENENTUKAN BILANGAN PRIMA=============');
    ulang :
    write ('Masukkan bilangan bulat yang ingin diperiksa = ');
    readln (X);
    writeln ('-----------------------------------------------------------');
    Faktor := 2;
    Jum_Faktor := 0;
    write ('Faktornya adalah bilangan 1 ');
    while Faktor <= X do
        begin
            if X mod Faktor = 0 then 
                begin
                    write ( ', ',Faktor:2);
                    Jum_Faktor := Jum_Faktor + 1
                end;
            Faktor := Faktor + 1;
        end;
    writeln;
    if Jum_Faktor = 1 then
        writeln (X, ' adalah bilangan prima')
        else 
            writeln (X, ' bukan bilangan prima');
    ulangi:
    writeln ('-----------------------------------------------------------');
    writeln ('Apakah Anda ingin memeriksa bilangan lainnya? (ya/tidak) : ');
    readln (konfirmasi);
    writeln ('-----------------------------------------------------------');
    case lowercase(konfirmasi) of
        'ya' : goto ulang;
        'tidak' : writeln ('Terima kasih sudah menggunakan program ini');
    else writeln ('Masukan yang Anda berikan tidak valid') ;
        goto ulangi;
    end;
end.