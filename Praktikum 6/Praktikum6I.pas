//Program Praktikum6I
program Menghitung_jumlah_mahasiswa;
uses crt;
var 
    usia_mahasiswa : word; //tipe data yang digunakan untuk usia mahasiswa yaitu word karena usia manusia sangat kecil kemungkinannya melebihi 65535 tahun. 
    jumlah_mahasiswa, jumlah_mahasiswa_usia, i, j : integer;
    jumlah_mahasiswa_17, jumlah_mahasiswa_18, jumlah_mahasiswa_19, jumlah_mahasiswa_20, jumlah_mahasiswa_lain : integer;
begin
    clrscr;
    writeln ('=============PROGRAM MENGHITUNG JUMLAH MAHASISWA BERDASARKAN USIA=============');
    write ('Masukkan jumlah mahasiswa = ');
    readln (jumlah_mahasiswa);
    writeln ('==============================================================================');
    if jumlah_mahasiswa >= 0 then
        begin
        for i := 1 to jumlah_mahasiswa do
            begin
                write ('Masukkan usia mahasiswa ke-',i, ': ');
                readln (usia_mahasiswa);
                    if usia_mahasiswa = 17 then
                        jumlah_mahasiswa_17 := jumlah_mahasiswa_17 + 1
                    else if usia_mahasiswa = 18 then
                        jumlah_mahasiswa_18 := jumlah_mahasiswa_18 + 1
                    else if usia_mahasiswa = 19 then
                        jumlah_mahasiswa_19 := jumlah_mahasiswa_19 + 1
                    else if usia_mahasiswa = 20 then
                        jumlah_mahasiswa_20 := jumlah_mahasiswa_20 + 1
                    else
                        jumlah_mahasiswa_lain := jumlah_mahasiswa_lain + 1;
            end;
        writeln ('==============================================================================');
        writeln ('Jumlah mahasiswa berusia 17 tahun   = ',jumlah_mahasiswa_17);
        writeln ('Jumlah mahasiswa berusia 18 tahun   = ',jumlah_mahasiswa_18);
        writeln ('Jumlah mahasiswa berusia 19 tahun   = ',jumlah_mahasiswa_19);
        writeln ('Jumlah mahasiswa berusia 20 tahun   = ',jumlah_mahasiswa_20);
        writeln ('Jumlah mahasiswa berusia selain itu = ',jumlah_mahasiswa_lain);
        end
    else 
        writeln ('Jumlah mahasiswa yang Anda masukkan tidak valid');
        writeln ('==============================================================================');
end.