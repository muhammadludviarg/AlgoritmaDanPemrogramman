Program Hari_Besok_Atau_Kemarin;
uses crt;
{=============================SUB PROGRAM==========================}
    procedure garis;
    const 
        Strip = '-';
        Panjang_Garis = 65;
    var
        i : integer;
    begin
        For i := 1 to Panjang_Garis do   
            Write (Strip);
        writeln;
    end;
{============================MAIN PROGRAM==========================}
label 
    ulang_1, ulang_2, ulang_3;
type 
    hari = (Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu);
var 
    hari_1, hari_2 : hari;
    pilihan : integer;
    konfirmasi : char;
begin
    ulang_1:
    clrscr;
    garis;
    writeln ('LAYANAN MENENTUKAN NAMA HARI INI ATAU KEMARIN');
    garis;
    writeln ('Hari : Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu');
    write ('Masukkan hari ini : ');
    readln (hari_1);
    writeln ('Pilih salah satu menu di bawah ini!');
    writeln ('  1. Besok ');
    writeln ('  2. Kemarin');
    ulang_3:
    write ('masukkan pilihan Anda (1/2) : ');
    readln (pilihan);
    garis;
    case pilihan of
        1   : 
                begin
                    case hari_1 of
                        minggu : hari_2 := senin;
                    else hari_2 := succ(hari_1);
                    end;
                    writeln ('Jika hari ini adalah hari ', hari_1, ' maka besok adalah hari ', hari_2);
                end;
        2   :
                begin
                    case hari_1 of
                        senin : hari_2 := minggu;
                    else hari_2 := pred(hari_1);
                    end;
                    writeln ('Jika hari ini adalah hari ', hari_1, ' maka kemarin adalah hari ', hari_2);
                end;
    else writeln ('Pilihan yang Anda masukkan tidak valid. Coba ulangi lagi! (1/2) : '); goto ulang_3;
    end;
    ulang_2:
    garis;
    write ('Apakah Anda ingin menggunakan layanan ini lagi? (y/t) : ');
    readln (konfirmasi);
    garis;
    case lowercase(konfirmasi) of
        'y' : goto ulang_1;
        't' : 
        begin 
            writeln ('Terimakasih telah menggunakan layanan ini.');
            writeln ('Semoga hari Anda menyenangkan!');
        end;
    else writeln ('Masukkan Anda tidak valid. Coba ulangi lagi dengan benar! (y/t) : '); goto ulang_2;
    end;
    garis;
    end.