program praktikum11d;
uses crt;

type
    data_brg = record
    namaBrg : string[15];
    unitBrg : array[1..3] of byte;
end;
var
    Barang : array[1..10] of data_brg;
    i : integer;

Begin
//Inisialisasi data di sini
    For i:=1 to 2 do 
    begin
    With barang[i] do
        Begin
            Writeln('Barang ke-', i);
            Write('nama = '); Readln(namaBrg);
            Write('jumlah 1 = '); Readln(unitBrg[1]);
            Write('jumlah 2 = '); Readln(unitBrg[2]);
            Write('jumlah 3 = '); Readln(unitBrg[3]);
        End;
    End;
End.
