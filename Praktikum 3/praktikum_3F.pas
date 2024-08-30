program denda_peminjaman_buku; // coba dibuat jika pengembalian dua buku tidak secara bersamaan.
uses crt;
const
    denda_1 = 2000; //denda_1 adalah denda keterlambatan pengembalian buku langka untuk 5 hari pertama.
    denda_2 = 5000; //denda_2 adalah denda keterlambatan pemgembalian buku langka untuk lama peminjaman 9 sampai 11 hari.
    denda_3 = 10000; //denda_3 adalah denda keterlambatan pengembalian buku langka untuk lama peminjaman lebih dari 11 hari.
    denda_4 = 1000; //denda_4 adalah denda keterlambatan pengembalian buku non langka untuk lama peminjaman lebih dari 7 hari.
var
    jumlah_pinjaman, kelompok_buku1, kelompok_buku2 : byte;
    denda_buku1, denda_buku2, denda_total, lama_hari_pinjam, lama_keterlambatan1, lama_keterlambatan2 : longint;
    nama : string;
begin
    clrscr;
    writeln ('=========================PENENTUAN DENDA PEMINJAMAN BUKU=========================');
    writeln ('Terdapat dua jenis buku dalam perpustakaan');
    writeln ('1. LANGKA         (ketik angka "1")');
    writeln ('2. TIDAK LANGKA   (ketik angka "2")');
    writeln ('Dengan maksimal buku yang dipinjam sebanyak dua buku.');
    writeln ('=================================================================================');
    write ('  Masukkan nama Anda = ');
    readln (nama);
    write ('  Berapa jumlah buku yang dipinjam = ');
    readln (jumlah_pinjaman);
    if (jumlah_pinjaman = 1) then
        begin
            write ('Apa jenis buku yang Anda pinjam (1/2) = ');
            readln (kelompok_buku1);
            if (kelompok_buku1 = 1) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if  (lama_hari_pinjam > 3) then
                        begin
                            if (lama_hari_pinjam > 8) then
                                begin
                                    if (lama_hari_pinjam > 11) then
                                        begin
                                            lama_keterlambatan1 := lama_hari_pinjam - 11;
                                            denda_buku1 := 5 * denda_1 + 3 * denda_2 + lama_keterlambatan1 * denda_3;
                                            denda_total := denda_buku1;
                                            end
                                    else
                                        begin
                                            lama_keterlambatan1 := lama_hari_pinjam - 8;
                                            denda_buku1 := 5 * denda_1 + lama_keterlambatan1 * denda_2;
                                            denda_total := denda_buku1;
                                        end;
                                end
                            else
                                begin
                                    lama_keterlambatan1 := lama_hari_pinjam - 3;
                                    denda_buku1 := lama_keterlambatan1 * denda_1;
                                    denda_total := denda_buku1;
                                end;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else if (kelompok_buku1 = 2) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if (lama_hari_pinjam > 7) then
                        begin
                            lama_keterlambatan2 := lama_hari_pinjam - 7;
                            denda_buku1 := lama_keterlambatan2 * denda_4;
                            denda_total := denda_buku1;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else 
                begin
                writeln ('Anda salah memasukkan jenis buku.');
                end;
        end
    else if (jumlah_pinjaman = 2) then
        begin
            write ('Apa jenis buku pertama yang Anda pinjam (1/2) = ');
            readln (kelompok_buku1);
            write ('Apa jenis buku kedua yang Anda pinjam (1/2)   = ');
            readln (kelompok_buku2);
            if (kelompok_buku1 = 1) and (kelompok_buku2 = 1) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if  (lama_hari_pinjam > 3) then
                        begin
                            if (lama_hari_pinjam > 8) then
                                begin
                                    if (lama_hari_pinjam > 11) then
                                        begin
                                            lama_keterlambatan1 := lama_hari_pinjam - 11;
                                            lama_keterlambatan2 := lama_hari_pinjam - 11;
                                            denda_buku1 := 5 * denda_1 + 3 * denda_2 + lama_keterlambatan1 * denda_3;
                                            denda_buku2 := 5 * denda_1 + 3 * denda_2 + lama_keterlambatan2 * denda_3;
                                            denda_total := denda_buku1 + denda_buku2;
                                        end
                                    else
                                        begin
                                            lama_keterlambatan1 := lama_hari_pinjam - 8;
                                            lama_keterlambatan2 := lama_hari_pinjam - 8;
                                            denda_buku1 := 5 * denda_1 + lama_keterlambatan1 * denda_2;
                                            denda_buku2 := 5 * denda_1 + lama_keterlambatan2 * denda_2;
                                            denda_total := denda_buku1 + denda_buku2;
                                        end;
                                end
                            else
                                begin
                                    lama_keterlambatan1 := lama_hari_pinjam - 3;
                                    lama_keterlambatan2 := lama_hari_pinjam - 3;
                                    denda_buku1 := lama_keterlambatan1 * denda_1;
                                    denda_buku1 := lama_keterlambatan2 * denda_1;
                                    denda_total := denda_buku1 + denda_buku2;
                                end;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else if (kelompok_buku1 = 1) and (kelompok_buku2 = 2) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if  (lama_hari_pinjam > 3) then
                        begin
                            if (lama_hari_pinjam > 7) then
                                begin
                                    if (lama_hari_pinjam > 8) then
                                        begin
                                        if (lama_hari_pinjam > 11) then
                                            begin 
                                                lama_keterlambatan1 := lama_hari_pinjam - 11;
                                                lama_keterlambatan2 := lama_hari_pinjam - 7;
                                                denda_buku1 := 5 * denda_1 + 3 * denda_2 + lama_keterlambatan1 * denda_3;
                                                denda_buku2 := lama_keterlambatan2 * denda_4;
                                                denda_total := denda_buku1 + denda_buku2;
                                            end
                                        else
                                            begin
                                                lama_keterlambatan1 := lama_hari_pinjam - 8;
                                                lama_keterlambatan2 := lama_hari_pinjam - 7;
                                                denda_buku1 := 5 * denda_1 + lama_keterlambatan1 * denda_2;
                                                denda_buku2 := lama_keterlambatan2 * denda_4;
                                                denda_total := denda_buku1 + denda_buku2;
                                            end;
                                        end  
                                    else
                                        begin
                                            lama_keterlambatan1 := lama_hari_pinjam - 3;
                                            lama_keterlambatan2 := lama_hari_pinjam - 7;
                                            denda_buku1 := lama_keterlambatan1 * denda_1;
                                            denda_buku2 := lama_keterlambatan2 * denda_4;
                                            denda_total := denda_buku1 + denda_buku2;
                                        end;
                                end
                            else
                                begin
                                    lama_keterlambatan1 := lama_hari_pinjam - 3;
                                    lama_keterlambatan2 := 0;
                                    denda_buku1 := lama_keterlambatan1 * denda_1;
                                    denda_buku2 := lama_keterlambatan2 * denda_4;
                                    denda_total := denda_buku1 + denda_buku2;
                                end;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else if (kelompok_buku1 = 2) and (kelompok_buku2 = 1) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if  (lama_hari_pinjam > 3) then
                        begin
                            if (lama_hari_pinjam > 7) then
                                begin
                                    if (lama_hari_pinjam > 8) then
                                        begin
                                        if (lama_hari_pinjam > 11) then
                                            begin 
                                                lama_keterlambatan2 := lama_hari_pinjam - 11;
                                                lama_keterlambatan1 := lama_hari_pinjam - 7;
                                                denda_buku2 := 5 * denda_1 + 3 * denda_2 + lama_keterlambatan2 * denda_3;
                                                denda_buku1 := lama_keterlambatan1 * denda_4;
                                                denda_total := denda_buku1 + denda_buku2;
                                            end
                                        else
                                            begin
                                                lama_keterlambatan2 := lama_hari_pinjam - 8;
                                                lama_keterlambatan1 := lama_hari_pinjam - 7;
                                                denda_buku2 := 5 * denda_1 + lama_keterlambatan2 * denda_2;
                                                denda_buku1 := lama_keterlambatan1 * denda_4;
                                                denda_total := denda_buku1 + denda_buku2;
                                            end;
                                        end  
                                    else
                                        begin
                                            lama_keterlambatan2 := lama_hari_pinjam - 3;
                                            lama_keterlambatan1 := lama_hari_pinjam - 7;
                                            denda_buku1 := lama_keterlambatan2 * denda_1;
                                            denda_buku2 := lama_keterlambatan1 * denda_4;
                                            denda_total := denda_buku1 + denda_buku2;
                                        end;
                                end
                            else
                                begin
                                    lama_keterlambatan1 := lama_hari_pinjam - 3;
                                    lama_keterlambatan1 := 0;
                                    denda_buku2 := lama_keterlambatan2 * denda_1;
                                    denda_buku1 := lama_keterlambatan1 * denda_4;
                                    denda_total := denda_buku1 + denda_buku2;
                                end;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else if (kelompok_buku1 = 2) and (kelompok_buku2 = 2) then
                begin
                    write ('Berapa hari lamanya peminjaman buku = ');
                    readln (lama_hari_pinjam);
                    if  (lama_hari_pinjam > 7) then
                        begin
                            lama_keterlambatan1 := lama_hari_pinjam - 7;
                            lama_keterlambatan2 := lama_hari_pinjam - 7;
                            denda_buku1 := lama_keterlambatan1 * denda_4;
                            denda_buku2 := lama_keterlambatan2 * denda_4;
                            denda_total := denda_buku1 + denda_buku2;
                        end
                    else
                        begin
                            denda_total := 0;
                            writeln ('Anda mengembalikan buku tepat waktu sehingga denda Anda = ', denda_total);
                        end;
                end
            else
                begin
                    write ('Anda salah memasukkan jenis buku pertama atau kedua. ');    
                end;
            writeln ('=================================================================================');
            writeln ('  Denda Anda dengan waktu peminjaman buku ', lama_hari_pinjam, ' hari adalah = Rp', denda_total);
        end
    else 
        begin
            writeln ('=================================================================================');
            writeln ('  Jumlah pinjaman Anda melebihi batas maksimal atau tidak sesuai dengan kenentuan perpustakaan.');    
        end;
end.
    
