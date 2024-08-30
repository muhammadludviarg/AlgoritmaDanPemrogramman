program praktikum11c;
uses crt;

type
    data_mahasiswa = record
    nim : string[10];
    nama : string[25];
    alamat : string[20];
    nilai : longint;
    end;
var
    mahasiswa : array[1..10] of data_mahasiswa;
    i : integer;
begin
for i:= 1 to 3 do
    begin
        writeln('Input mahasiswa ke-', i);
        with mahasiswa[i] do
            begin
            write('kode = '); readln(nim);
            write('nama = '); readln(nama);
            write('alamat = '); readln(alamat);
            write('nilai = '); readln(nilai);
            writeln;
        end;
    end;
for i := 1 to 3 do
    begin  
        writeln('Data Mahasiswa');
        with mahasiswa[i] do
        begin
            writeln('NIM :',nim);
            writeln('Nama :',nama);
            writeln('Alamat :',alamat);
            writeln('Nilai :',nilai);
        end;
    end;
end.