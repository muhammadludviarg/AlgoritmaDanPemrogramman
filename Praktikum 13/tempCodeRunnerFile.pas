
    end;
end;

// sub program input
procedure input (var data : data_petugas; var total_petugas : integer);
var 
    n, i : integer;
    validasi : boolean;
begin
    clrscr;
    validasi := true;
    if total_petugas > maksimal then 
        writeln ('Kapasitas data petugas suadah penuh!')
    else 
        write ('Jumlah petugas yang diinput: '); readln (n);
        for i := 1 to n do
        begin