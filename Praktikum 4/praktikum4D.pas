// Program jadwal mata kuliah
program jadwal_mata_kuliah;
uses crt;
var 
    namahari : string;
begin
    clrscr;
    writeln ('====================JADWAL MATA KULIAH====================');
    write ('Masukan nama hari yang Anda pilih = ');
    readln (namahari);
    case lowercase (namahari) of
        'senin' : writeln ('Senin mata kuliah yang diberikan Algoritma dan Pemrograman');
        'selasa' : writeln ('Selasa mata kuliah yang diberikan Bahasa Indonesia');
        'rabu' : writeln ('Rabu mata kuliah yang diberikan Bahasa Inggris');
        'kamis' : writeln ('Kamis mata kuliah yang diberikan Basis Data');
        'jumat' : writeln ('jumat mata kuliah yang diberikan Kalkulus');
        'sabtu' : writeln ('sabtu mata kuliah yang diberikan Pengantar Teknik Informasi');
        else 
            writeln ('Anda salah memasukkan nama hari.');
    end;
end.