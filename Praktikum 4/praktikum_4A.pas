// Program konversi nilai Case
program contoh1;
uses crt;
var Nilai : integer;
    grade : char;
begin
    clrscr;
    writeln ('Input nilai yang Anda dapatkan 0 s.d. 100 ');
    write ('Nilai Anda = ');
    readln (Nilai);
    case Nilai of
        0..59 : grade := 'D'; // penulisan .. adalah subrange (rentang)
        60..69 : grade := 'C';
        70..79 : grade := 'B';
        80..100 : grade := 'A';
    else
        grade := 'F';
    end;
    write ('Grade Anda ', grade);
    case grade of
        'D' : writeln(' Kurang memuaskan');
        'C' : writeln(' Cukup');
        'B' : writeln(' Baik');
        'A' : writeln(' Sangat Baik');
    else writeln (' Anda salah input nilai ');
    end;
    readln
end.