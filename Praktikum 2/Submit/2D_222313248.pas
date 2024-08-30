program menentukan_harga_bayar;
uses crt;
var
    jumlah_barang, harga_satuan, pajak, harga_bayar : integer; //jumlah barang akan selalu bilangan bulat. begitu juga dengan mata uang, tidak akan desimal.
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
