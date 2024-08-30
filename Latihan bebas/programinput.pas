program input;
uses crt;
type 
    petugas = record
    nama : string;
    nik : integer;
    umur : word;
    end;

    data_petugas1 = array[1..500] of petugas;
var 
    i, n, m : integer;
    data_petugas : data_petugas1;
begin
    clrscr;
    write ('Jumlah petugas : '); readln (n);
    for i := 1 to n do
    begin
        writeln ('Data petugas ke-', i);
        with data_petugas[i] do
        begin
            write ('Nama : '); readln (nama);    
            write ('NIK : '); readln (nik);
            write ('Umur : '); readln (umur);        
        end;
    end;
    clrscr;
    for i := 1 to n do 
    begin
        with data_petugas[i] do 
        begin
            writeln ('Data petugas ke-', i);
            writeln ('Nama : ', nama);
            writeln ('NIK : ', nik);
            writeln ('Umur : ', umur);
            writeln;
        end;
    end;
end.