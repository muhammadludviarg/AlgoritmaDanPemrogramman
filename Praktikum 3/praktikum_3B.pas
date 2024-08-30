program struktir_if_then;
uses crt;
var
    nilai : real;
begin
    clrscr;
    write ('Masukkan Nilai UTS = ');
    readln (nilai);
    if (nilai >= 50) then
        begin
            writeln ('Nilai UTS lebih besar dari 50');
        end
    else
        begin
            writeln ('Nilai UTS kurang dari 50');    
        end;
    writeln ('Mahasiswa D-IV Statistika Polstat STIS');
    readln;
end.