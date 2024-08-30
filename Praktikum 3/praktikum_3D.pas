program gajikaryawan;
uses crt;
const 
    golongan_1=50000;
    golongan_2=75000;
    golongan_3=80000;
    golongan_4=100000;
    uang_lembur=30000;
    jam_kerja_pokok=35;
var 
    nama:string;
    jam_kerja_minggu_1, jam_kerja_minggu_2, jam_kerja_minggu_3, jam_kerja_minggu_4, jam_lembur, golongan :byte;
    upah_minggu1, upah_minggu2, upah_minggu3, upah_minggu4, upah_total:real;
begin
    clrscr;
    writeln('=========================PENENTUAN GAJI KARYAWAN=========================');
    writeln('==============================PT MAJU TERUS==============================');
    writeln('Terdapat empat golongan karyawan');
    writeln('1. GOLONGAN I    (ketik angka "1")');
    writeln('2. GOLONGAN II   (ketik angka "2")');
    writeln('3. GOLONGAN III  (ketik angka "3")');
    writeln('4. GOLONGAN IV   (ketik angka "4")');
    writeln('=========================================================================');
    write('   Masukkan nama Anda                                = ');
    readln(nama);
    write('   Berapa jumlah jam kerja Anda dalam minggu pertama = ');
    readln(jam_kerja_minggu_1);
    write('   Berapa jumlah jam kerja Anda dalam minggu kedua   = ');
    readln(jam_kerja_minggu_2);
    write('   Berapa jumlah jam kerja Anda dalam minggu ketiga  = ');
    readln(jam_kerja_minggu_3);
    write('   Berapa jumlah jam kerja Anda dalam minggu keempat = ');
    readln(jam_kerja_minggu_4);
    write('   Masukkan golongan Anda (1/2/3/4)                  = ');
    readln(golongan);
    writeln('=========================================================================');
    if (golongan = 1) then
        begin
            if (jam_kerja_minggu_1 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_1 - jam_kerja_pokok;
                    upah_minggu1 := jam_kerja_pokok * golongan_1 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu1 := jam_kerja_minggu_1 * golongan_1;
                end;
            if (jam_kerja_minggu_2 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_2 - jam_kerja_pokok;
                    upah_minggu2 := jam_kerja_pokok * golongan_1 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu2 := jam_kerja_minggu_2 * golongan_1;
                end;
            if (jam_kerja_minggu_3 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_3 - jam_kerja_pokok;
                    upah_minggu3 := jam_kerja_pokok * golongan_1 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu3 := jam_kerja_minggu_3 * golongan_1;
                end;
            if (jam_kerja_minggu_4 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_4 - jam_kerja_pokok;
                    upah_minggu4 := jam_kerja_pokok * golongan_1 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu4 := jam_kerja_minggu_4 * golongan_1;
                end;
        end
    else if (golongan = 2) then
        begin
            if (jam_kerja_minggu_1 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_1 - jam_kerja_pokok;
                    upah_minggu1 := jam_kerja_pokok * golongan_2 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu1 := jam_kerja_minggu_2 * golongan_2;
                end;
            if (jam_kerja_minggu_2 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_2 - jam_kerja_pokok;
                    upah_minggu2 := jam_kerja_pokok * golongan_2 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu2 := jam_kerja_minggu_2 * golongan_2;
                end;
            if (jam_kerja_minggu_3 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_3 - jam_kerja_pokok;
                    upah_minggu3 := jam_kerja_pokok * golongan_2 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu3 := jam_kerja_minggu_3 * golongan_2;
                end;
            if (jam_kerja_minggu_4 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_4 - jam_kerja_pokok;
                    upah_minggu4 := jam_kerja_pokok * golongan_2 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu4 := jam_kerja_minggu_4 * golongan_2;
                end;
        end
    else if (golongan = 3) then
        begin
            if (jam_kerja_minggu_1 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_1 - jam_kerja_pokok;
                    upah_minggu1 := jam_kerja_pokok * golongan_3 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu1 := jam_kerja_minggu_2 * golongan_3;
                end;
            if (jam_kerja_minggu_2 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_2 - jam_kerja_pokok;
                    upah_minggu2 := jam_kerja_pokok * golongan_3 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu2 := jam_kerja_minggu_2 * golongan_3;
                end;
            if (jam_kerja_minggu_3 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_3 - jam_kerja_pokok;
                    upah_minggu3 := jam_kerja_pokok * golongan_3 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu3 := jam_kerja_minggu_3 * golongan_3;
                end;
            if (jam_kerja_minggu_4 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_4 - jam_kerja_pokok;
                    upah_minggu4 := jam_kerja_pokok * golongan_3 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu4 := jam_kerja_minggu_4 * golongan_3;
                end;
        end
    else if (golongan = 4) then
        begin
            if (jam_kerja_minggu_1 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_1 - jam_kerja_pokok;
                    upah_minggu1 := jam_kerja_pokok * golongan_4 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu1 := jam_kerja_minggu_1 * golongan_4;
                end;
            if (jam_kerja_minggu_2 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_2 - jam_kerja_pokok;
                    upah_minggu2 := jam_kerja_pokok * golongan_4 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu2 := jam_kerja_minggu_2 * golongan_4;
                end;
            if (jam_kerja_minggu_3 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_3 - jam_kerja_pokok;
                    upah_minggu3 := jam_kerja_pokok * golongan_4 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu3 := jam_kerja_minggu_3 * golongan_4;
                end;
            if (jam_kerja_minggu_4 > jam_kerja_pokok) then
                begin
                    jam_lembur := jam_kerja_minggu_4 - jam_kerja_pokok;
                    upah_minggu4 := jam_kerja_pokok * golongan_4 + jam_lembur * uang_lembur;
                end
            else
                begin
                    upah_minggu4 := jam_kerja_minggu_4 * golongan_4;
                end;
        end
    else writeln('Golongan yang Anda masukkan salah');

    upah_total := upah_minggu1 + upah_minggu2 + upah_minggu3 + upah_minggu4;
    writeln(' Upah Anda selama satu bulan sebagai berikut');
    writeln(' Upah minggu pertama = Rp', upah_minggu1:1:0);
    writeln(' Upah minggu kedua   = Rp', upah_minggu2:1:0);
    writeln(' Upah minggu ketiga  = Rp', upah_minggu3:1:0);
    writeln(' Upah minggu keempat = Rp', upah_minggu4:1:0);
    writeln(' -------------------------------------------------------------------------');
    writeln(' Upah total pegawai atas nama ', nama,' sebesar = Rp', upah_total:1:0);
end.


