program kabataku;
uses crt;
{==========begin of subprogram==========}
function penjumlahan( a,b : integer):integer;
//var hasil : integer;
begin
  //  write ('Masukkan operand1 : '); readln(a);
   // write ('Masukkan operand2 : '); readln(b);
    penjumlahan := a + b;
    writeln (a,'+',b,'=',penjumlahan); 
end;

function pengurangan( a,b : integer):integer;
//var hasil : integer;
begin
   // write ('Masukkan operand1 : '); readln(a);
   // write ('Masukkan operand2 : '); readln(b);
    pengurangan := a - b;
    writeln (a,'-',b,'=',pengurangan); 
end;

function perkalian( a,b : integer):integer;
//var hasil : integer;
begin
   // write ('Masukkan operand1 : '); readln(a);
    //write ('Masukkan operand2 : '); readln(b);
    perkalian := a * b;
    writeln (a,'x',b,'=',perkalian); 
end;

function pembagian( a,b : integer):real;
//var hasil : real;
begin
    //write ('Masukkan operand1 : '); readln(a);
   // write ('Masukkan operand2 : '); readln(b);
    if b <> 0 then
        begin;
        pembagian := a / b;
        writeln (a,'/',b,'=',pembagian);
        end
        else write ('Tidak Terdefinisi. penyebut tidak boleh nol');
end;

{==========end of subprogram==========}
var Pilihan, op1, op2: integer;
    //hasil : real;
begin
    clrscr;
    writeln('Selamat datang di kalkulator sederhana');
    writeln('Silakan pilih menu berikut:');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian');
   // writeln('5. Keluar');
    write('Pilihan Anda :'); readln(Pilihan);
    write ('Masukkan operand1 : '); readln(op1);
    write ('Masukkan operand2 : '); readln(op2);
    case Pilihan of
        1 : penjumlahan(op1,op2);
        2 : pengurangan(op1,op2);
        3 : perkalian(op1,op2);
        4 : pembagian(op1,op2);
       // 5 : writeln ('Terima Kasih sudah menggunakan layanan ini ');exit:
    else writeln('Masukkan Anda tidak tepat');
    end;
end.