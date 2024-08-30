Program penjum_matriks;
uses crt;
type 
    matriks = array[1..3, 1..3] of integer;
var
    a,b,c: matriks;
    i,j: integer;
begin
    clrscr;
// membuat matriks A
    writeln('Membuat matriks A');
    for i:=1 to 3 do
        for j:=1 to 3 do
        begin
            write('[',i,',',j,']=');
            readln(a[i,j]);
        end;
// membuat matriks B
    writeln('Membuat matriks B');
    for i:=1 to 3 do
        for j:=1 to 3 do
        begin
            write('[',i,',',j,']=');
            readln(b[i,j]);
        end;
// membuat matriks C
    for i := 1 to 3 do 
        for j := 1 to 3 do 
        begin
            c[i,j] := a[i,j] + b[i,j];  
        end;
// memunculkan matriks A yang sudah dibuat
    writeln('Matriks A');
    for i:=1 to 3 do
    begin
        for j:=1 to 3 do
        write(a[i,j],' ');
        writeln;
    end;
// memunculkan matriks B yang sudah dibuat
    writeln('Matriks B');
        for i:=1 to 3 do
        begin
            for j:=1 to 3 do
                write(b[i,j],' ');
            writeln;
        end;
// memunculkan matriks C yang sudah dibuat
    writeln('Matriks C = A + B');
        for i:=1 to 3 do
        begin
            for j:=1 to 3 do
                write(c[i,j],' ');
            writeln;
        end;
end.

