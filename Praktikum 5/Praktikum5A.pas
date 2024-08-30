// pengulangan
// pakai while-do, repeat until, for.
// 
program cetak_halo;
uses crt;
var 
    n : integer;
begin 
    clrscr; // jika tidak ada inisiasi maka default pascal integer dimulai dari nol.
    n := 10;
    while n >= 1 do // n hanyalah counter
        begin
            writeln ('Halo');
            n := n - 1; // increament. kalau tidak pakai increament maka program akan run terus. karena n selalu bernilai true. bisa juga decreament.
        end;
    readln;
end.