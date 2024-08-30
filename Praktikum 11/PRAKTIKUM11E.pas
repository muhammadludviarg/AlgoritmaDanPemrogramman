program praktikum11d;
uses crt;

type
    masuk = record
    tgl : 1..31;
    bln : 1..12;
    thn : integer;
    end;

    alamat = record
    jalan : string[20];
    kota : string[10];
    end;

    nilaipeg = record
    pokok,tunjangan,lembur : LONGWORD;
    end;

    pegawai = record
    nama : string[20];
    tglmasuk : masuk;
    almt : alamat;
    nilai : nilaipeg;
    end;
var
datapegawai : array [1..10] of pegawai;
i,n : integer;

begin
    clrscr;
    write ('Index pegawai yang ingin di input : ');readln(i);
    With datapegawai[i] do
        Begin
        write('Nama : '); readln(nama);
        write('Tanggal Masuk : '); readln(tglmasuk.tgl);
        write('Bulan Masuk : '); readln(tglmasuk.bln);
        write('Tahun Masuk : '); readln(tglmasuk.thn);
        write('Alamat Jalan : ');readln(almt.jalan);
        write('Gaji pokok : '); readln(nilai.pokok);
        End;
    write('Index pegawai yang ingin ditampilkan : '); readln(n);
    With datapegawai[n] do
    Begin
        Writeln('Nama : ',(nama));
        writeln('Tanggal Masuk : ', (tglmasuk.tgl));
        writeln('Bulan Masuk : ',(tglmasuk.bln));
        writeln('Tahun Masuk : ', (tglmasuk.thn));
        writeln('Alamat Jalan : ',(almt.jalan));
        writeln('Gaji pokok pegawai : ', (nilai.pokok));
    END;
end.