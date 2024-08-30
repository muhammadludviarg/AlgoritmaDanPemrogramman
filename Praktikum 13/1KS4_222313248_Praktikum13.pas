program praktikum13bismillah_bisa;
uses crt;
const 
    maksimal = 500;
type
    formatNIK = array[1..16] of char;

    petugas = record
    nama : string[100];
    nik : formatNIK;
    umur : byte;
    end;

    data_petugas = array[1..maksimal] of petugas;

{==========awal dari sub program==========} 

// sub program tampil menu
procedure menu;
begin
    writeln('Selamat datang di program entri petugas survei BPS RI');
    writeln('1. Input Data Petugas');
    writeln('2. Tampilkan Data Petugas');
    writeln('3. Cari Petugas');
    writeln('4. Urutkan Berdasarkan Nama');
    writeln('5. Urutkan Berdasarkan NIK Secara Menurun');
    writeln('6. Keluar');
    writeln;
end;

// sub program untuk mengecek apakah NIK yang dimasukkan valid
procedure validasiNIK (var c : formatNIK; var validasi : boolean);
var 
    i : integer;
begin
    validasi := true;
    for i := 1 to 16 do 
    begin
        if (c[i] >= '0') and (c[i] <= '9') then
            validasi := true
            else 
            begin
                validasi := false;
                break;
            end;
    end;
end;

// sub program input
procedure input (var data : data_petugas; var total_petugas : integer);
var 
    n, i, j : integer;
    validasi : boolean;
    nikstring : string[16];
begin
    clrscr;
    if total_petugas > maksimal then 
        writeln ('Kapasitas data petugas suadah penuh!')
    else 
        write ('Jumlah petugas yang diinput: '); readln (n);
        for i := 1 to n do
        begin
            writeln ('Data petugas ke-', total_petugas + i);
            with data[total_petugas + i] do
            begin
                write ('Nama : '); readln (nama);
                nama := upcase(nama); // Mengubah semua inputan nama menjadi huruf kapital untuk memudahkan proses pencarian
                // Dilakukan pengecekan agar inputan NIK memiliki digit 16 dan berupa angka
                repeat
                    validasi := true;
                    write ('NIK (Harus 16 digit angka) : '); readln (nikstring); // Masukkan user disimpak kedalam variabel nikstring yang bertipe string, ini untuk menegecek apakah jumlah digitnya 16
                    if length(nikstring) = 16 then 
                        begin
                            for j := 1 to 16 do
                            begin
                                nik[j] := nikstring[j];
                                validasiNIK(nik, validasi);
                            end;
                        end
                    else  validasi := false;
                    if (validasi = false ) then 
                    begin
                        writeln ('NIK harus berisi 16 digit angka!');
                        writeln ('Tekan Enter untuk memasukkan NIK lagi ...');
                    end; 
                until validasi = true;
                write ('Umur : '); readln (umur);        
            end;
            writeln;
        end;
        total_petugas := total_petugas + n;
end;

// sub program tampil
procedure tampil(var data : data_petugas; var total_petugas : integer);
var 
    pilihan_tampil : word;
    i, jumlah_tampil, indeks_tampil : integer;
begin
    if total_petugas = 0 then 
        writeln ('Belum ada data petugas yang dimasukkan!')
    else 
        begin
            writeln ('Pilihan tampil : ');
            writeln ('1. Semua petugas');
            writeln ('2. Petugas tertentu');
            write ('Pilihan (1 atau 2): '); readln (pilihan_tampil);
            if pilihan_tampil = 1 then 
            begin
                writeln ('Data semua petugas');
                writeln;
                for i := 1 to total_petugas do 
                begin
                    with data[i] do 
                    begin
                        writeln ('Data petugas ke-', i);
                        writeln ('Nama : ', nama);
                        writeln ('NIK : ', nik);
                        writeln ('Umur : ', umur);
                        writeln;
                    end;
                end;
            end
            else if  pilihan_tampil = 2 then
            begin
                write ('Berapa petugas yang ingin ditampilkan : '); readln (jumlah_tampil);
                for i := 1 to jumlah_tampil do 
                begin
                    write ('Indeks petugas yang ingin ditampilkan : '); readln (indeks_tampil);
                    with data[indeks_tampil] do 
                        begin
                            writeln ('Data petugas ke-', indeks_tampil);
                            writeln ('Nama : ', nama);
                            writeln ('NIK : ', nik);
                            writeln ('Umur : ', umur);
                            writeln;
                        end;
                end;
            end
            else writeln ('Masukkan Anda tidak valid!');   
        end; 
end;

// sub program pencarian petugas berdasarkan nama
procedure cari( var data : data_petugas; var total_petugas : integer);
var i, indeks_petugas : integer;
    nama_petugas : string[100];
begin
    write ('Masukkan nama petugas yang ingin dicari : '); readln (nama_petugas);
    nama_petugas := upcase(nama_petugas);
    data[total_petugas + 1].nama := nama_petugas;
    i := 1;
    writeln;
    while (data[i].nama <> nama_petugas) do 
        i := i + 1;
    if (i < (total_petugas+1)) then 
        begin
            indeks_petugas := i;
            writeln ('Data Ditemukan!');
            writeln ('NIK ',nama_petugas,' = ', data[indeks_petugas].nik, ' , Umur ', data[indeks_petugas].umur, ' Tahun');
        end
        else writeln ('Data tidak ditemukan!');
end;
// sub program swap
procedure swap(var a,b : petugas);
var temp : petugas;
begin
    temp := a;
    a := b;
    b := temp;
end;
// sub program mengurutkan petugas berdasarkan nama
procedure urut_nama(var data : data_petugas; var total_petugas : integer);
var i, j : integer;
  //  temp : petugas;
begin
    for i := 1 to (total_petugas-1) do 
    begin
        for j := 1 to (total_petugas-i) do 
        begin
            if data[j].nama > data[j+1].nama then
                begin
                    swap (data[j+1],data[j]);
                   { temp := data[j+1];
                    data[j+1] := data[j];
                    data[j] := temp;}
                end;
        end;
    end;
    writeln ('Data telah diurutkan berdasarkan Nama!');
end;

// sub program mengurutkan petugas berdasarkan NIK descending
procedure urut_nik(var data : data_petugas; var total_petugas: integer);
var i, j : integer;
    temp : petugas;
begin
    for i := 1 to (total_petugas-1) do 
    begin
        for j := 1 to (total_petugas-i) do 
        begin
            if data[j].nik < data[j + 1].nik then
                begin
                    temp := data[j + 1];
                    data[j + 1] := data[j];
                    data[j] := temp;
                end;
        end;
    end;
    writeln ('Data telah diurutkan menurun berdasarkan NIK!');
end;

{==========akhir dari sub program==========}

{==========awal dari main program==========}
var 
    data : data_petugas;
    pilihan, total_petugas : integer;
begin
    total_petugas := 0;
    repeat
        clrscr;
        menu;
        write('Pilih menu: '); readln(Pilihan);
        clrscr;
        case Pilihan of
            1: input(data, total_petugas);
            2: tampil(data, total_petugas);
            3: cari(data, total_petugas);
            4: urut_nama(data, total_petugas);
            5: urut_nik(data, total_petugas);
            6: writeln('Keluar dari program.');
        else
            writeln('Pilihan tidak valid.');
        end;
        if Pilihan <> 6 then
        begin
            writeln('Tekan Enter untuk melanjutkan...'); readln;
        end;
    until Pilihan = 6;
end.