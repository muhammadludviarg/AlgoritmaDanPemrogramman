program bonus_pegawai;
uses crt;
var  
    nama : string;
    lama_bekerja, umur, golongan : byte;
    bonus : real;
const
    bonus1 = 2000000; //bonus1 didefinisikan sebagai bonus untuk staf yang bekerja paling tidak 10 tahun dan sudah mencapai 40 tahun.
    bonus2 = 1500000; //bonus2 didefinisikan sebagai bonus untuk staf yang bekerja paling tidak 10 tahun namun belum mencapai 40 tahun.
    bonus3 = 1000000; //bonus3 didefinisikan sebagai bonus untuk staf yang bekerja kurang dari 10 tahun.
    bonus4 = 500000; //bonus4 didefinisikan sebagai bonus untuk pegawai non staf yang sudah bekerja minimal 5 tahun.
begin
    clrscr;
    writeln ('=========================PENENTUAN BONUS PEGAWAI=========================');
    writeln ('Terdapat dua golongan pegawai dalam perusahaan.');
    writeln ('1. STAF       (ketik angka "1")');
    writeln ('2. NON STAF   (ketik angka "2")');
    writeln ('=========================================================================');
    write ('  Masukkan nama Anda = ');
    readln (nama);
    write ('  Anda termasuk ke dalam golongan berapa = ');
    readln (golongan);
    writeln ('=========================================================================');
    if (golongan = 1) then
        begin
            write ('Sudah berapa tahun Anda bekerja untuk perusahaan = ');
            readln (lama_bekerja);
            if (lama_bekerja >= 10) then
                begin
                    write ('Berapa umur Anda (dalam tahun) = ');
                    readln (umur);
                    if (umur >= 40) then
                        begin
                            bonus := bonus1;
                            writeln ('Bonus yang Anda peroleh adalah = Rp', bonus:1:0);
                        end
                    else
                        begin
                            bonus := bonus2;
                            writeln ('Bonus yang Anda peroleh adalah = Rp', bonus:1:0);
                        end;
                end
            else
                begin
                    bonus := bonus3;
                    writeln ('Bonus yang Anda peroleh adalah = Rp', bonus:1:0);
                end;
        end
    else if (golongan = 2) then
        begin
            write ('Sudah berapa tahun Anda bekerja untuk perusahaan = ');
            readln (lama_bekerja);
            if (lama_bekerja >= 5) then
                begin
                    bonus := bonus4;
                    writeln ('Bonus yang Anda peroleh adalah = Rp', bonus:1:0);
                end
            else
                begin
                    write ('Mohon maaf Anda belum layak untuk mendapatkan bonus dari perusahaan');
                end;
        end
    else writeln ('Anda salah memasukkan jenis golongan.');
end.