// Program Menentukan Hasil Ujian
program Contoh2;
uses crt;
var 
    Nilai : integer;
begin
    clrscr;
    writeln ('Input nilai yang Anda dapatkan 0 s.d. 100 ');
    write ('Nilai Anda = ');
    readln(Nilai);
    case (Nilai) of
        0..59 : writeln('Anda tidak lulus');
        60..100 : 
            begin
                write ('Anda lulus ');
                case Nilai of
                    60..74 : writeln(' dengan nilai cukup');
                    75..89 : writeln(' dengan nilai baik');
                    else writeln('dengan nilai sangat baik');
                end;
            end;
        else writeln('Anda salah input nilai');
            exit
    end;
end.