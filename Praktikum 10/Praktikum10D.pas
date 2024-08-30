Program penjumlahan_matriks;
uses crt;
var
    a,b,c: array[1..3, 1..3, 1..3] of integer; //array dengan ordo 3x3x3
    i,j,k: integer;
begin
    clrscr;
//Membuat matriks A
    writeln('Membuat matriks A'); 
    for i:=1 to 3 do
        for j:=1 to 3 do
            for k:=1 to 3 do     
            begin
                write('[',i,',',j,',',k,']=');
                readln(a[i,j,k]);
            end;
// membuat matriks B
    writeln('Membuat matriks B'); 
    for i:=1 to 3 do
        for j:=1 to 3 do
            for k:=1 to 3 do     
            begin
                write('[',i,',',j,',',k,']=');
                readln(b[i,j,k]);
            end;
        
// Membuat matriks C
    for i := 1 to 3 do 
        for j:=1 to 3 do
            for k:=1 to 3 do     
            begin
                c[i,j,k] := a[i,j,k] + b[i,j,k];
            end;
// Memunculkan matriks A yang sudah dibuat
    writeln('Matriks A'); //matriks A berordo 3x3x3 direpresentasikan dalam bentuk matriks yang berordo 3x9
        for i:=1 to 3 do
        begin
            for j:=1 to 3 do
            begin
                for k:= 1 to 3 do
                begin
                    write(a[i,j,k],' ');
                end;
            end;
            writeln;
        end;
// Memunculkan matriks B yang sudah dibuat
    writeln('Matriks B'); //matriks B berordo 3x3x3 direpresentasikan dalam bentuk matriks yang berordo 3x9
        for i:=1 to 3 do
        begin
            for j:=1 to 3 do
            begin
                for k:= 1 to 3 do
                begin
                    write(b[i,j,k],' ');
                end;
            end;
            writeln;
        end;
// Memunculkan matriks C yang sudah dibuat
    writeln('Matriks C = A + B'); //matriks C berordo 3x3x3 direpresentasikan dalam bentuk matriks yang berordo 3x9
        for i:=1 to 3 do
        begin
            for j:=1 to 3 do
            begin
                for k:= 1 to 3 do
                begin
                    write(c[i,j,k]:3);
                end;
            end;
            writeln;
        end;
end.

