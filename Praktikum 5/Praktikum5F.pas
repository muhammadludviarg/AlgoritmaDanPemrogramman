program Rata_rata_N_Bilangan;
uses crt;
var 
    N, i: word;
    rata_rata, bilangan, jumlah : real;
begin
    clrscr;
    writeln ('--------------------------------------------------------------- ');
    writeln ('           PROGRAM MENGHITUNG RATA-RATA N BILANGAN ');
    writeln ('--------------------------------------------------------------- ');
    write ('Masukkan banyaknya bilangan yang akan dihitung rata-ratanya = ');
    readln (N); // tambahkan if else jika N 0 atau negatif.
    if N > 0 then 
        begin
        jumlah := 0;
        i := 1;
        repeat
            write ('Masukkan bilangan ke-', i, ' = ');
            readln (bilangan);
            jumlah := jumlah + bilangan;
            i := i + 1;
        until (i = N+1);
        writeln ('--------------------------------------------------------------- ');
        writeln ('Jumlah dari ', N, ' bilangan tersebut = ', jumlah:0:3);
        writeln ('--------------------------------------------------------------- ');
        rata_rata := jumlah/N;
        writeln ('Rata-rata dari ', N,' bilangan tersebut = ', rata_rata:0:3);
        end
        else writeln ('Jumlah bilangan N harus lebih dari 0');
end.