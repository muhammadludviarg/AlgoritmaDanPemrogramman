program menentukan_mean_modus_median;
uses crt;
type arrai = array of integer;
{==========Awal dari sub program==========}
// fungsi mengurutkan elemen dalam array
function urut(a: arrai; n: integer): arrai;
var 
    j, i, tempat: integer;
begin
    for i := 0 to n-2 do
    begin
        for j := 0 to n-i-2 do
        begin
            if a[j] > a[j+1] then
            begin
                tempat := a[j];
                a[j] := a[j+1];
                a[j+1] := tempat;
            end;
        end;
    end;
    urut := a;
    //menampilkan array terurut
    write('[ ');
    for n := 0 to high(a) do
    begin
        write(a[n], ' ');
    end;
    write(']');
end;

{Penjelasan Pseudocode
for i from 0 to n-1:
Loop luar untuk mengulangi proses pengurutan hingga n-1 kali, di mana n adalah panjang array. Setiap iterasi memastikan bahwa satu elemen terbesar dari bagian yang belum terurut ditempatkan pada posisi yang benar di akhir array.
for j from 0 to n-i-2:
Loop dalam untuk membandingkan dan menukar elemen-elemen berdekatan dalam array. Panjang loop dalam berkurang dengan setiap iterasi loop luar karena elemen terbesar sudah berada di posisi yang benar.
if array[j] > array[j+1]:
Kondisi untuk memeriksa apakah elemen di posisi j lebih besar dari elemen di posisi j+1.
swap(array[j], array[j+1]):
Menukar elemen-elemen jika mereka berada dalam urutan yang salah.
Contoh Sederhana Bubble Sort
Misalkan kita memiliki array: [5, 3, 8, 4, 2]

Iterasi Pertama:

Bandingkan 5 dan 3 → Tukar → [3, 5, 8, 4, 2]
Bandingkan 5 dan 8 → Tidak Tukar → [3, 5, 8, 4, 2]
Bandingkan 8 dan 4 → Tukar → [3, 5, 4, 8, 2]
Bandingkan 8 dan 2 → Tukar → [3, 5, 4, 2, 8]
Iterasi Kedua:

Bandingkan 3 dan 5 → Tidak Tukar → [3, 5, 4, 2, 8]
Bandingkan 5 dan 4 → Tukar → [3, 4, 5, 2, 8]
Bandingkan 5 dan 2 → Tukar → [3, 4, 2, 5, 8]
Iterasi Ketiga:

Bandingkan 3 dan 4 → Tidak Tukar → [3, 4, 2, 5, 8]
Bandingkan 4 dan 2 → Tukar → [3, 2, 4, 5, 8]
Iterasi Keempat:

Bandingkan 3 dan 2 → Tukar → [2, 3, 4, 5, 8]
Sekarang array sudah terurut: [2, 3, 4, 5, 8]}

// fungsi membuat barisan bilangan
function input : arrai;
var x, y, n : integer;
    bil : arrai;
begin
    write ('Masukkan banyaknya bilangan (Ga usah banyak-banyak keles) : ');
    readln (n);
    SetLength(bil,n);
    for x := 0 to n-1 do
    begin
        write ('Masukkan bilangan ke-', x+1, ' : ');
        readln (bil[x]);
    end; 
    input := bil;
    write ('[ ');
    for y := 0 to n-1 do 
    begin
        write (bil[y], ' ');
    end;
    write (']');
end;

// fungsi menentukan jumlah elemen array
function jumlah(a : arrai; n : integer) : integer;
var jumlahbil, m : integer;
begin
    jumlahbil := 0;
    for m := 0 to n-1 do
    begin
        jumlahbil := jumlahbil + a[m];
    end;
    jumlah := jumlahbil;
end;

// fungsi mean
function mean(a : arrai; n : integer) : real;
begin
    mean := jumlah(a,n)/n;
end;

// fungsi median
function median(a : arrai; n : integer) : real;
var Nper2 : integer;
    med : real;
begin
    if ((n-1) mod 2) = 0 then
        begin
            Nper2 := (n-1) div 2;
            med := (a[Nper2] + a[Nper2 + 1])/2;
        end
        else Nper2 := ((n-1) div 2) + 1;
            med := a[Nper2];
    median := med;
end;
{==========Akhir dari sub program==========}
{==========Awal dari main program==========}
var barisan1, barisan2 : arrai;
    n, i, Nper2: integer;
    rata2, med : real;
begin
    clrscr;
    writeln ('Selamat datang di program mencari nilai mean, median, dan modus');
    barisan1 := input;
    writeln;
    writeln ('Barisan bilangan yang Anda masukkan akan diurutkan dahulu ');
    n := length(barisan1);
    barisan1 := urut(barisan1,n);
    writeln;
    writeln ('Berikut adalah mean, median, dan modus dari barisan yang Anda masukkan ');
    rata2 := mean(barisan1,n);
    writeln ('1. Mean = ', rata2:2:2);
    writeln ('2. Median = ', median(barisan1,n):2:2);
end.
{==========Akhir dari main program==========}