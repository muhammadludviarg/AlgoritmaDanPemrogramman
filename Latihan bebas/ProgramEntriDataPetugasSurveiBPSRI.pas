Program EntriDataPetugasSurveiBPSRI;
uses crt;
type
    Petugas = record
        NIK:string[20];
        Nama:string[50];
        Umur:integer;
    end;
var
    DataPetugas:array[1..100] of Petugas;
    i,JumlahPetugas:integer;
    menu:1..6;


procedure Input_Data;
    begin
        writeln('=====================================');
        write('Jumlah Petugas: ');readln(JumlahPetugas);
        for i:=1 to JumlahPetugas do 
        begin
            writeln('Data Petugas ke-',i,':');
            with DataPetugas[i] do 
            begin
                write('NIK: ');readln(NIK);
                write('Nama: ');readln(Nama);
                write('Umur: ');readln(Umur);
            end;
            writeln;
        end;
        writeln('=====================================');
    end;

procedure Tampilkan_Data(N:integer);
    begin
        writeln('=====================================');
        for i:=1 to n do 
        begin
            with DataPetugas[i] do 
            begin
                Writeln('Data Petugas ke-',i,':');
                writeln('NIK: ',NIK);
                writeln('Nama: ',Nama);
                writeln('Umur: ',Umur);
            end;
            writeln;
        end;
        writeln('=====================================');
        writeln;
    end;

procedure Cari_Petugas(N:integer);
    var
        Nama_Cari:string[50];
        found: boolean;
    begin
        writeln('=====================================');
        write('Masukkan Nama Petugas: ');readln(Nama_Cari);
        found := false;
        repeat
        begin 
            if DataPetugas[i].Nama = Nama_Cari then
            begin
                writeln('Data ditemukan!');
                writeln('NIK  :', DataPetugas[i].NIK);
                writeln('Umur :', DataPetugas[i].Umur, ' Tahun');
                found := true;
                i := i +1;
            end;
        end;
        until found = true;
        if not found then
                writeln('Data tidak ditemukan');
                writeln('=====================================');
    end;

procedure Urutkan_Nama(N:integer);
    var 
        Ganti:Petugas;
        j:integer;
    begin
        writeln('=====================================');
        for i:=1 to n-1 do 
            for j:=1 to n-1 do 
                if dataPetugas[j].Nama>DataPetugas[j+1].Nama then
                begin
                    Ganti:=DataPetugas[j+1];
                    DataPetugas[j+1]:=DataPetugas[j];
                    DataPetugas[j]:=Ganti;
                end;
        writeln('Data telah diurutkan berdasarkan nama');
        writeln('=====================================');
    end;

procedure Urutkan_NIK(N:integer);
    var 
        Ganti:Petugas;
        j:integer;
    begin
        writeln('=====================================');
        for i:=1 to n-1 do 
            for j:=1 to n-1 do 
                if DataPetugas[j].NIK<DataPetugas[j+1].NIK then
                begin
                    Ganti:=DataPetugas[j+1];
                    DataPetugas[j+1]:=DataPetugas[j];
                    DataPetugas[j]:=Ganti;
                end;
        writeln('Data telah diurutkan berdasarkan NIK');
        writeln('=====================================');
        writeln;
    end;


begin
    Clrscr;
    JumlahPetugas:=0;
    writeln('Selamat datang di program entri Petugas Survei BPS RI');
    repeat
    writeln('1. Input Data');
    writeln('2. Tampilkan Data');
    writeln('3. Cari Petugas');
    writeln('4. Urutkan Berdasarkan Nama');
    writeln('5. Urutkan Berdasarkan NIK');
    writeln('6. Keluar');
    write('Pilihan Anda: ');readln(menu);
        case menu of 
        1: Input_Data;
        2: Tampilkan_Data(JumlahPetugas);
        3: Cari_Petugas(JumlahPetugas);
        4: Urutkan_Nama(JumlahPetugas);
        5: Urutkan_NIK(JumlahPetugas);
        6: exit;
        end;
    until menu=6;
end.
