// Program kalkulator sederhana
program kalkulator_sederhana;
uses crt, math; // library math digunakan supaya fungsi perpangkatan yang dituliskan dengan power(base, exponent) dapat berjalan.
var 
    operand_1, operand_2, hasil, base, exponent : real;
    operator_matematika : char;
begin
    clrscr;
    writeln ('====================PROGRAM KALKULATOR SEDERHANA=====================');
    writeln (' Operator matematika yang tersedia sebagai berikut : ');
    writeln (' Penjumlahan ketik "+"');
    writeln (' Pengurangan ketik "-"');
    writeln (' Pembagian ketik "/"');
    writeln (' Perkalian ketik "x"');
    writeln (' Perpangkatan ketik "^"');
    writeln ('---------------------------------------------------------------------');
    write (' Masukkan operand atau angka pertama = ');
    readln (operand_1);
    write (' Masukkan operator matematika = ');
    readln (operator_matematika);
    write (' Masukkan operand atau angka kedua = ');
    readln (operand_2);
    case (operator_matematika) of
            '+' : hasil := operand_1 + operand_2;
            '-' : hasil := operand_1 - operand_2;
            '/' : 
                begin
                    if operand_2 <> 0 then
                    hasil := operand_1 / operand_2
                    else 
                        begin
                        writeln ('---------------------------------------------------------------------'); 
                        writeln (' Tidak terdefinisi. Dalam operasi pembagian, penyebut tidak boleh nol.');
                        exit
                        end;
                end;
            'x' : hasil := operand_1 * operand_2;
            '^' : 
                begin
                    base := operand_1;
                    exponent := operand_2;
                    hasil := power (base,exponent);
                end;
        else
            begin
            writeln ('---------------------------------------------------------------------'); 
            writeln (' Operator matematika yang Anda masukkan salah.');
            exit
            end;
    end;
    writeln ('---------------------------------------------------------------------');
    writeln (' ', operand_1:1:4,' ', operator_matematika,' ', operand_2:1:4, ' = ', hasil:1:4);
end.