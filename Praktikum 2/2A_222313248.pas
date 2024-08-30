Program input1;
Uses Crt;
Var
    nama,alamat: String;
    umur: real;
    ipk: Real;
Begin
    Clrscr;
    Writeln ('Masukkan Data Mahasiswa');
    Writeln ('=======================');
    Write ('Nama :');
    Readln (nama);
    Write ('Alamat :');
    Readln (alamat);
    Write ('Umur :');
    Read (umur);
    Write ('IPK :');
    Readln (ipk);
    Writeln;
    Writeln ('=========HASIL=========');
    Write ('Nama: ',nama,'. Alamat: ',alamat);
    Writeln ('. Umur: ',umur:8:5,'. IPK: ',ipk:20:5);
    Readln;
End. 