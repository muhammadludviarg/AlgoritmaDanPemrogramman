program DataPetugasSurvei;

uses crt;

const
    MAX_PETUGAS = 100;

type
    Petugas = record
        NIK: string;
        Nama: string;
        Umur: integer;
    end;

var
    DaftarPetugas: array[1..MAX_PETUGAS] of Petugas;
    JumlahPetugas: integer;

procedure TampilkanMenu;
begin
    writeln('Menu:');
    writeln('1. Input Data Petugas');
    writeln('2. Tampilkan Data Petugas');
    writeln('3. Keluar');
    writeln;
end;

procedure InputData;
begin
    if JumlahPetugas < MAX_PETUGAS then
    begin
        inc(JumlahPetugas);
        writeln('Input Data Petugas ke-', JumlahPetugas);
        write('NIK: '); readln(DaftarPetugas[JumlahPetugas].NIK);
        write('Nama: '); readln(DaftarPetugas[JumlahPetugas].Nama);
        write('Umur: '); readln(DaftarPetugas[JumlahPetugas].Umur);
    end
    else
    begin
        writeln('Kapasitas data petugas penuh!');
    end;
end;

procedure TampilkanData;
var
    i: integer;
begin
    if JumlahPetugas = 0 then
    begin
        writeln('Belum ada data petugas yang diinput.');
    end
    else
    begin
        writeln('Data Petugas:');
        for i := 1 to JumlahPetugas do
        begin
            writeln('Petugas ke-', i);
            writeln('NIK: ', DaftarPetugas[i].NIK);
            writeln('Nama: ', DaftarPetugas[i].Nama);
            writeln('Umur: ', DaftarPetugas[i].Umur);
            writeln;
        end;
    end;
end;

var
    Pilihan: integer;

begin
    JumlahPetugas := 0;
    repeat
        clrscr;
        TampilkanMenu;
        write('Pilih menu: '); readln(Pilihan);
        clrscr;
        case Pilihan of
            1: InputData;
            2: TampilkanData;
            3: writeln('Keluar dari program.');
        else
            writeln('Pilihan tidak valid.');
        end;
        if Pilihan <> 3 then
        begin
            writeln('Tekan Enter untuk melanjutkan...'); readln;
        end;
    until Pilihan = 3;
end.
