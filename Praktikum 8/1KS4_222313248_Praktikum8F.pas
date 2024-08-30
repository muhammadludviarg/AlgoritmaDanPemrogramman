Program kalkulator_sederhana;
uses crt;
    procedure garis;
    const 
        Strip = '-';
        Panjang_Garis = 70;
    var
        i : integer;
        begin
            For i := 1 to Panjang_Garis do 
                Write (Strip);
            writeln;
        end;
    function Penjumlahan(x, y : real):real;
        begin
            Penjumlahan := x+y;
            writeln (x:1:2, ' + ', y:1:2, ' = ', Penjumlahan:1:4);
        end;
    function Pengurangan(x, y : real):real;
        begin
            Pengurangan := x-y;
            writeln (x:1:2, ' - ', y:1:2, ' = ', Pengurangan:1:4);
        end;
    function Perkalian(x, y : real):real;
        begin
            Perkalian := x*y;
            writeln (x:1:2, ' X ', y:1:2, ' = ', Perkalian:1:4);
        end;
    function Pembagian(x, y : real):real;
        begin
            if y <> 0 then
                begin
                Pembagian := x/y;
                writeln (x:1:2, ' / ', y:1:2, ' = ', Pembagian:1:4);
                end
            else writeln ('TIDAK TERDEFINISI. Penyebut yang Anda masukkan adalah 0.');
        end;
var operand_1, operand_2, hasil : real;
    pilihan : integer;
    konfirmasi : char;
label 
    ulang_1, ulang_2, ulang_3;
begin
    clrscr;
    garis;
    writeln ('Selamat datang di Kalkulator Sederhana');
    writeln ('Silakan pilih menu berikut:');
    writeln ('  1. Penjumlahan');
    writeln ('  2. Pengurangan');
    writeln ('  3. Perkalian');
    writeln ('  4. Pembagian');
    writeln ('  5. Keluar');
    ulang_1:
    garis;
    write ('Pilihan Anda: ');
    readln (pilihan);
    garis;
    if (pilihan = 1) or (pilihan = 2) or (pilihan = 3) or (pilihan = 4) then 
        begin
        write ('Masukkan bilangan sebagai operand pertama = ');
        readln (operand_1);
        write ('Masukkan bilangan sebagai operand kedua = ');
        readln (operand_2);
        garis;
        case pilihan of
            1 : hasil := Penjumlahan(operand_1,operand_2);
            2 : hasil := Pengurangan(operand_1,operand_2);
            3 : hasil := Perkalian(operand_1,operand_2);
            4 : hasil := Pembagian(operand_1,operand_2);
        end;
        end
    else if pilihan = 5 then 
        goto ulang_2
    else writeln ('Masukkan Anda tidak ada dalam menu.'); goto ulang_3;
    ulang_3:
    garis;
    write ('Apakah Anda masih ingin menggunakan kalkulator sederhana? (Y/T) : ');
    readln (konfirmasi);
    case lowercase(konfirmasi) of
        'y' : goto ulang_1;
        't' : goto ulang_2;
    otherwise writeln ('masukkan anda tidak valid. Coba ulangi lagi! (Y/T) : '); goto ulang_3;
    end;
    ulang_2:
    garis;
    writeln ('Terimakasih telah menggunakan kalkulator sederhana');
    garis; 
end.
