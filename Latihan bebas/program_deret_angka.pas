program deret_angka;
uses crt;
var 
    angka, jumlah, i : integer;
begin
    clrscr;
    write ('Masukkan angka N bilangan bulat yang ingin Anda hitung deretnya = ');
    readln (angka);
    jumlah := 0;
    i := 1;
    while i <= angka do 
    begin
        jumlah := jumlah + i;
        if i <> angka then
        begin
            write (i,' + ');
        end
        else
        begin
            write (i,' = ', jumlah);
        end;
        i := i + 1;
    end;
end.