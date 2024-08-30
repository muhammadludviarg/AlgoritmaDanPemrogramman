program latihan_array;
uses crt;
{==========Awal dari sub program==========}
function tentukanNper2 (a : integer) :integer;
begin
    if (a mod 2) = 0 then 
        tentukanNper2 := a div 2
    else tentukanNper2 := (a div 2) + 1;
end;
{==========Akhir dari sub program==========}
{==========Awal dari main program==========}
var
    bilangan : array [1..1000] of real;
    i, j, N, urutan : integer;
begin
    clrscr;
    writeln ('Program menentukan elemen ke N/2 dari barisan bilangan');
    writeln ('Elemen genap akan dibulatkan ke bawah ');
    write ('Masukkan banyaknya bilangan : '); readln (N);
    i := 1;
    while i<=N do 
        begin
            write ('Masukkan bilangan ke-',i,' : ');
            readln (bilangan[i]);
            i := i + 1;
        end;
    j := 1;
    write ('[ ');
    while j<=N do
        begin
            write (bilangan[j]:6:2);
            j := j + 1;
        end;
    write (']':6);
    writeln;
    urutan := tentukanNper2(N);
    writeln ('Elemen ke N/2 dari ',N,' bilangan yang diinput adalah ',bilangan[urutan]:2:2);
end. 
{==========Akhir dari main program==========}