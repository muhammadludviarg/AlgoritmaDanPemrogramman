program hari;
uses crt;
label menupilihan;
type
    Day = (monday, tuesday, wednesday, thursday, friday, saturday, sunday); {membuat tipe data enumarated untuk hari}
    allday = monday..sunday; {membuat subrange dari hari}
var
    a : allday; {mendeklarasikan a sebagai variabel dari subrange hari}
    menu : integer;
    
procedure tomorrow; //sub program untuk menu tomorrow atau besok
    begin
        if ORD(a) = 6 then
        writeln('Hari ini adalah hari ', a ,' dan besok adalah hari ', 'monday') {pengecualian buat inputan sunday karena tidak terdapat sucessor dari ordinal terakhir }
        else
        writeln('Hari ini adalah hari ', a ,' dan besok adalah hari ', SUCC(a));
    end;
procedure yesterday;
    begin
        if ORD(a) = 0 then
        writeln('Hari ini adalah hari ', a ,' dan kemarin adalah hari ', 'sunday') {pengecualian buat inputan monday karena tidak terdapat predecessor dari ordinal pertama }
        else
        writeln('Hari ini adalah hari ', a ,' dan kemarin adalah hari ', PRED(a));
    end;
begin // main program
    menupilihan: {kembali ke main program}
    clrscr;
    writeln('|------------------------|');
    writeln('-         HARI          -');
    writeln('|------------------------|');
    writeln('Menu : ');
    writeln('1. Tomorrow');
    writeln('2. Yesterday');
    writeln('------------------------');
    write('Hari ini hari : ');
    readln(a);
    write('Pilihan Menu  : ');
    readln(menu);
    case menu of 
        1  : tomorrow;
        2  : yesterday
    else
        writeln('Andaa memilih menu yang salah!!'); {akan muncul jika user menginput menu yang salah}
        
    end;
    writeln('------------------------');
    write('Tekan ENTER jika ingin kembali ke menu!!');
    readln;
    goto menupilihan {kembali ke label menupilihan pada mein program}
end.
        
    
