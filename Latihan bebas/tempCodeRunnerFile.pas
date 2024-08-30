program segitiga_pascal;
uses crt;
var 
    a : array[1..20,-20..20] of integer;
    i, j, pangkat, baris : integer;
begin
    clrscr;
    write ('Masukkan pangkat yang Anda pilih = ');
    readln (pangkat);
    baris := pangkat + 1;
    for i := 1 to 20 do 
    begin
        for j := -20 to 20 do
        begin
            a[i,j] := 0;
        end;
    end;