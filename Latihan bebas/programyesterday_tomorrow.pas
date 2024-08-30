program yesterday_tomorrow;
uses crt;
type
    day = (Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, minggu);
var 
    hari_1, hari_2 : day;
    pilihan : integer;
begin
    clrscr;
    write ('Hari ini hari apa? : ');
    readln (hari_1);
    writeln ('Menu :');
    writeln ('1. Besok');
    writeln ('2. Kemarin');
    write ('Masukkan angka yang Anda pilih (1 atau 2) : ');
    readln (pilihan);
    if pilihan = 1 then
        begin
        if hari_1 = minggu then 
            begin
            hari_2 := Senin ;
            writeln ('Jika hari ini adalah hari ', hari_1, ' maka besok adalah hari ', hari_2);
            end
        else 
            begin
            hari_2 := succ(hari_1);
            writeln ('Jika hari ini adalah hari ', hari_1, ' maka besok adalah hari ', hari_2);
            end;
        end
    else if pilihan = 2 then
        begin
        if hari_1 = Senin then 
            begin
            hari_2 := minggu ;
            writeln ('Jika hari ini adalah hari ', hari_1, ' maka kemarin adalah hari ', hari_2);
            end
        else 
            begin
            hari_2 := pred(hari_1);
            writeln ('Jika hari ini adalah hari ', hari_1, ' maka kemarin adalah hari ', hari_2);
            end;
        end
    else write ('Pilihan yang Anda masukkan tidak valid. terimakasih sudah menggunakan program ini');    
end.
