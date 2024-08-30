//Praktikum6G
program segitiga_bilangan;
uses crt;
var 
    bilangan_bulat, baris, kolom : integer; //baris dan kolom merupakan counter untuk looping.
begin
    clrscr;
    writeln ('=============PROGRAM MEMBUAT SEGITIGA SIKU-SIKU BILANGAN=============');
    write ('Masukkan bilangan bulat positif N = ');
    readln (bilangan_bulat);
    writeln ('=====================================================================');
    if bilangan_bulat >= 0 then
    for baris := bilangan_bulat downto 1 do //Urutan baris dibalik menjadi, baris satu berada di baris paling bawah.
        begin
            for kolom := bilangan_bulat downto 1 do //Urutan kolom dibalik menjadi, kolom satu berada di kolom paling kanan. 
                begin
                    if kolom >= baris then
                    write (baris:4);
                        begin
                            if kolom = 1 then 
                            writeln;
                        end;
                end;
        end
    else 
    writeln ('Bilangan yang anda masukkan tidak valid, coba masuukan bilangan bulat positif');
    writeln ('=====================================================================');
end.

