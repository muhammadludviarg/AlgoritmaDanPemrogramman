program tugas13;
uses crt;
const 
    maksimal = 500;
type 
    data_petugas = record
    nama : string[50];
    NIK : integer;
    umur : 1..200;
    end;
{===========Awal dari sub program=========}
// fungsi input data
procedure input;
var n,i, j : integer;
    a : data_petugas;
begin
    write ('Berapa banyaknya petugas yang akan input datanya : ');readln (n);
    if n < maksimal then 
    begin
        for j := 1 to n do 
        begin
            {write ('Index data petugas yang ingin di input : '); readln (i);}
            with a[j] do
            begin
                write ('Nama petugas : '); readln (nama);
                write ('NIK petugas  : '); readln (NIK);
                write ('Umur petugas  : '); readln (umur);
            end;
        end;
        input := a;
    end
    else write ('kapasitas array sudah penuh ...');
end;

// fungsi menampilkan data
function show : data_petugas;
var k, l, r : integer;
    b ; data_petugas;
begin
    write ('berapa banyak data petugas yang ingin di tampilkan : '); readln (k);
    for l := 1 to k do
    begin
        write ('Index yang ingin di input : '); readln (r);
        with b[r] do 
        begin
            writeln ('Nama : ', nama);
            writeln ('NIK : ', NIK);
            writeln ('Umur : ', umur);
        end;
        
    end;
end;
{===========Akhir dari sub program=========}
{===========Awal dari main program=========}
var 
    petugas : array[1..maksimal] of data_petugas;
    i : integer;
    pilihan : 1..3;
begin
    clrscr;
    writeln ('Selamat Datang di program entri Petugas Survei BPS RI');
    writeln ('1. Input Data');
    writeln ('2. Tampilkan Data');
    writeln ('3. Keluar');
    write ('Pilihan Anda (1-3)');
    readln (pilihan);
    case pilihan of 
        begin
            1 : input;
            2 : show;
            3 : write ('Terima kasih sudah menggunakan program ini.');
        end;
end.
{===========Akhir dari main program=========}