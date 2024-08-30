procedure garis;
    const 
        Strip = '-';
        Panjang_Garis = 70;
    var
        i : integer;
        begin
            For i := 1 to Panjang_Garis do 
                Write (Strip);
            writeln;
        end;