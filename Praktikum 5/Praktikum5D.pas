program deret_aritmatika;
uses crt;
var 
    N, jumlah, i : integer;
begin
    clrscr;
    writeln ('--------------------PROGRAM DERET ARITMATIKA-------------------');
    write ('Masukkan N bilangan bulat pertama yang ingin dijumlahkan = ');
    readln (N);
    jumlah := 0;
    i := 1;
    while i<=N do
        begin
            if i <> N then
                write ( i, ' + ')
            else write (i);
            jumlah := jumlah + i;
            i := i + 1;
        end;
    writeln ('  = ', jumlah);
end.