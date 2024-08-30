program menentukan_musim;
uses crt;
var 
    month : (januari, februari, maret, april, mei, juni, juli, agustus, september, november, desember);
begin
    clrscr;
    write ('Masukkan bulan saai ini : ');
    readln ((month));
   // month := lowercase(bulan);
    if (ord(month)=0) or (ord(month)=1) or (ord(month)=11) then
        writeln ('Anda berada di musim dingin')
    else if (ord(month)=2) or (ord(month)=3) or (ord(month)=4) then
        writeln ('Anda berada di musim semi')
    else if (ord(month)=5) or (ord(month)=6) or (ord(month)=7) then
        writeln ('Anda berada di musim panas')
    else if (ord(month)=8) or (ord(month)=9) or (ord(month)=10) then
        writeln ('Anda berada di musim gugur')
    else writeln ('Nama bulan yang Anda masukkan tidak valid');
end.