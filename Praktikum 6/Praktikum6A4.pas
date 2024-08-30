program cetak_angka;
uses crt;
var
    i, j, baris, kolom :integer;
begin
    clrscr;
    write ('Masukkan banyaknya baris = ');
    readln (baris);
    write ('Masukkan banyaknya kolom = ');
    readln (kolom);
    for i:=1 to baris do
        if i mod(2) = 0 then
            begin
                for j:=kolom downto 0 do
                begin
                    write(j,' ');
                    if j=0 then 
                    writeln;
                end;
            end
        else   
        begin
                for j:=0 to kolom do
                begin
                    write(j,' ');
                    if j=kolom then 
                    writeln;
                end;
            end;
end.
