program konversi_suhu_modul4;
uses crt;
var 
    celcius, fahrenheit : real;
begin
    clrscr;
    writeln ('MENCARI KONVERSI SUHU');
    writeln ('=====================');
    write ('Derajat Celcius = ');
    readln (celcius); //menyimpan nilai masukan ke dalam variabel celcius
    fahrenheit := 9/5*celcius+32;
    write ('Derajat fahrenheit = ', fahrenheit:1:2); //memanggil variabel fahrenheit dan mengatur agar yang ditampilkan 2 angka desimal.
end.
