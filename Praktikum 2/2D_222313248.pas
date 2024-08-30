program menentukan_harga_bayar;
uses crt;
var
    jumlah_barang, harga_satuan, pajak, harga_bayar : longint; 
begin
    clrscr;
    writeln ('Menentukan Harga Bayar');
    writeln ('======================');
    write ('Jumlah barang = ');
    readln (jumlah_barang);
    write ('Harga satuan = Rp');
    readln (harga_satuan);
    write ('Pajak = Rp');
    readln (pajak);
    harga_bayar := jumlah_barang*harga_satuan+pajak;
    write ('Harga Bayar = Rp',harga_bayar);
end.
