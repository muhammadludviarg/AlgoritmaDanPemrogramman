program lagu_anak_ayam_turun_N;
uses crt;
var N : integer;
begin
    clrscr;
    writeln (' ---------------------------------------- ');
    writeln ('  PROGRAM LAGU ANAK AYAM TURUN LALU MATI ');
    writeln (' ---------------------------------------- ');
    write ('Masukkan jumlah anak ayam = ');
    readln (N);
    writeln (' ---------------------------------------- ');
    if N >=1  then
        begin
            writeln ('Anak Ayam turun ', N);
            writeln (' ---------------------------------------- ');
            while N >= 1 do
                begin
                    if N<>1 then
                        writeln ('Anak Ayam turun ', N, ', mati satu tinggal ', N - 1)
                    else writeln ('Anak Ayam turun ', N, ', mati satu tinggal induknya');
                    N := N - 1;
                end;    
        end
    else if N = 0 then
        begin
            writeln (' ---------------------------------------- ');
            writeln (' Anak ayam tidak ada yang turun ');
        end
    else 
        begin
            writeln (' ---------------------------------------- ');
            writeln (' Masukkan jumlah anak ayam tidak valid. ');
        end;
end.