program else_bermasalah;
uses crt;
var 
    Nilai : char;
begin
    clrscr;
    write ('Nilai huruf yang didapet ? ');
    readln (Nilai);
    case Nilai of
        'A' : writeln ('Sangat Baik');
        'B' : writeln ('Baik');
        'C' : writeln ('Cukup');
        'D' : writeln ('Kurang');
        'E' : writeln ('Gagal');
        else write ('Anda salah memasukkan nilai huruf.');
    end;
end.