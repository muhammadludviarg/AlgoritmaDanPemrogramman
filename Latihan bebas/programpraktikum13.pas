program praktikum13;
uses crt;
type 
    petugas = record
    nama : string;
    nik : integer;
    umur : integer;
    end;
const 
    maksimal = 500;
{awal dari sub program}
// prosedur tampil menu
procedure menu;
begin
    writeln('Menu:');
    writeln('1. Input Data Petugas');
    writeln('2. Tampilkan Data Petugas');
    writeln('3. Keluar');
    writeln;
end;

// fungsi input
function input(a : array[1..maksimal] of petugas) : array[1..maksimal] of petugas;
var 
    n, i, j : integer
begin
    write ('Berapa jumlah petugas yang akan diinput datanya : '); readln (n);
    if n > maksimal then 
    begin
        writeln ('Jumlah data yang harus diinput melebihi kapasitas! ');
    end
    else 
        begin
            for j:=1 to n do 
            begin
                With a[j] do
                Begin
                    write('Nama : '); readln(nama);
                    write('NIK : '); readln(nik);
                    write('Umur : '); readln(umur);
                end;
            end;
        end;
    input := a;
end;
{akhir dari sub program}
var 
    data_petugas : array[1..maksimal] of petugas;
    banyaknya_petugas : integer;
    pilihan : 
begin
    clrscr;
    menu;
    write('Pilih menu: '); readln(Pilihan);
    case Pilihan of
        1: InputData;
        2: TampilkanData;
        3: writeln('Keluar dari program.');
    else
        writeln('Pilihan tidak valid.');
    end;
    if Pilihan <> 3 then
    begin
        writeln('Tekan Enter untuk melanjutkan...'); readln;
    end;
end.


