program permutasi_kompinasi_faktorial;
uses crt;
{==========Awal dari sub program==========}
function faktorial(a : integer):integer;
var i, nilai : integer;
begin
if a > 0 then
    begin
    nilai := 1;
    for i := 1 to a do
        begin
            nilai := nilai * i;
            faktorial := nilai; 
        end;
    end
else faktorial := 1;
end;

function permutasi(b,c : integer):real;
var pembilang, penyebut : integer;
begin
    pembilang := faktorial(b);
    penyebut := faktorial(b-c); 
    permutasi := pembilang / penyebut;
end;

function Kombinasi(d,e : integer):real;
begin
    Kombinasi := permutasi(d,e) / faktorial(e) ;
end;
{==========Akhir dari sub program==========}
{==========Awal dari main program==========}
var pilihan : smallint;
    hasil : real;
    x, y : integer;
begin
    clrscr;
    writeln ('Selamat datang di layanan faktorial, permutasi, dan kombinasi');
    writeln ('Silakan pilih menu berikut :');
    writeln (' 1. faktorial ');
    writeln (' 2. permutasi ');
    writeln (' 3. kombinasi ');
    write ('Masukkan pilihan Anda (tuliskan hanya angkanya) : ');
    readln (pilihan);
    if (pilihan = 1) or (pilihan = 2) or (pilihan = 3) then
        begin
            case pilihan of 
                1 : begin 
                        write ('Masukkan sebuah bilangan non negatif : ');
                        readln (x);
                        hasil := faktorial(x);
                        write (x, '!', ' = ', hasil:2:2);
                    end;
                2 : begin 
                        write ('Masukkan bilangan non negatif pertama  : ');
                        readln (x);
                        write ('Masukkan bilangan non negatif kedua  : ');
                        readln (y);
                        hasil := permutasi(x,y);
                        write (x, 'P', y, ' = ', hasil:2:2);
                    end;
                3 : begin 
                        write ('Masukkan bilangan non negatif pertama  : ');
                        readln (x);
                        write ('Masukkan bilangan non negatif kedua  : ');
                        readln (y);
                        hasil := Kombinasi(x,y);
                        write (x, 'C', y, ' = ', hasil:2:2);
                    end;
            end;
        end
        else write ('Masukkan Anda tidak valid');
end.
{==========Akhir dari main program==========}