Program menentukan_nilai_elemen_ke_Nper2;
uses crt;
// Sub program menulis baris
    procedure garis;
        const 
            Strip = '-';
            Panjang_Garis = 59;
        var
            i : integer;
        begin
            For i := 1 to Panjang_Garis do   
                Write (Strip);
            writeln;
        end;
// Program Utama
label 
    ulang_1;
var 
    angka : array[1..1000] of real;
    i, N, Nper2 : integer;
    konfirmasi : char;
begin
    ulang_1:
    clrscr;
    Writeln ('PROGRAM MENENTUKAN ELEMEN KE-N/2 DARI SUARU BARIS BILANGAN');
    garis;
    write ('Masukkan banyaknya bilangan : '); //meminta masukkan user terkait banyaknya angka 
    readln (N);
    for i := 1 to N do //meminta pengguna untuk memasukkan nilai-nilai 
    begin
        write ('Masukkan angka ke-',i,' : '); 
        readln (angka[i]);
    end;
    garis;
    for i := 1 to N do //menampilkan angka-angka yang dimasukkan user
    begin
        write (angka[i]:4:2, ' ');
    end;
    writeln;
    if N mod 2 = 0 then //menentukan elemen ke-N/2.
        Nper2 := N div 2
        else
            Nper2 := (N div 2) + 1; // Jika N ganjil maka N/2 akan dibulatkan ke atas. contohnya jika N = 7. Maka N/2 = 3,5. Karena dibulatkan ke atas, program akan menampilkan elemen ke 4.
    garis;
    writeln ('Elemen ke-',N,'/2 atau elemen ke-',Nper2,' dari barisan bilangan yang dimasukkan adalah ', angka[Nper2]:4:2);
    garis;
    write ('Silakan tekan ENTER jika Anda ingin mencoba lagi.');
    readln;
    goto ulang_1;
end.    