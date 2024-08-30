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
    for i := 1 to baris do 
    begin
        for j := -20 to 20 do
        begin
            a[i,j] := 0;
        end;
    end;
    a[1,0] := 1;
    for i := 2 to baris do
    begin
        for j := -19 to 19 do
        begin
            a[i,j] := a[i-1,j-1] + a[i-1,j+1];
        end;
    end;
    for i := 1 to baris do 
    begin
        for j := -20 to 20 do 
        begin
            if a[i,j] > 99 then
                write (a[i,j])
            else if a[i,j] > 9 then
                write (a[i,j],' ')
            else if a[i,j] > 0 then
                write (a[i,j],'  ')
            else write ('   ');
        end;
        writeln;
    end;
end.