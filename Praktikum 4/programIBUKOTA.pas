program IBUKOTA;
uses crt;
var 
    ibk : string;
begin
    clrscr;
    write ('masukkan kota ');
    readln(ibk);
    case lowercase (ibk) of //lowercase adalah fungsi bawaan string, artinya semua inputan akan dikonvert menjadi huruf kecil semua.
        'jakarta' : writeln (ibk,' Adalah Ibu kota dari Provinsi DKI Jakarta');
        'bandung' : writeln (ibk,' Adalah Ibu kota dari Provinsi Jawa Barat');
        'semarang' : writeln (ibk,' Adalah Ibu kota dari Provinsi Jawa Tengah');
        'yogyakarta' : writeln (ibk,' Adalah Ibu kota dari Provinsi Jawa Timur');
        'serang' : writeln (ibk,' AdalahIbu kota dari Provinsi Banten');
    end;
end.