program gaji_karyawan;
uses crt;
const 
    golongan_I : 50000
    golongan_II : 75000
    golongan_III : 80000
    golongan_IV : 100000
    upah_lembur : 30000
var
    jumlah_jam_minggu_1, jumlah_jam_minggu_2, jumlah_jam_minggu_3, jumlah_jam_minggu_4, jam_lembur, golongan, upah : real
    nama : string
begin
    clrscr;
    writeln('Masukkan nama Anda = ');
    readln(nama);
    writeln('Masukkan golongan Anda (1/2/3/4) = ');
    readln(golongan);
    writeln('masukkan jumlah jam kerja Anda dalam satu minggu pertama = ');
    readln(jumlah_jam_minggu_1);
    writeln('masukkan jumlah jam kerja Anda dalam satu minggu kedua = ');
    readln(jumlah_jam_minggu_2);
    writeln('masukkan jumlah jam kerja Anda dalam satu minggu ketiga = ');
    readln(jumlah_jam_minggu_3);
    writeln('masukkan jumlah jam kerja Anda dalam satu minggu keempat = ');
    readln(jumlah_jam_minggu_4);
    if (golongan = 1) then
        begin
            if (jumlah_jam_minggu_1 > 35) then
                jam_lembur := jumlah_jam_minggu_1 - 35;
                upah := jumlah_jam_minggu_1*golongan_I+jam_lembur*upah_lembur;s
        end;

