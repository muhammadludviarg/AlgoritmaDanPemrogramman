Program Tugas6Program4;
uses crt;

var N,i,sign : integer;
    x,sum : real;

begin
    clrscr;
    writeln('Program Deret Angka Pecahan');
    writeln('=============================');
    write('Input Nilai Penyebut Terakhir yang Diinginkan (Bil. Ganjil) = '); readln(N);
    i:= 1;
    sign:=1;
    sum:= 0;
    while i<=N do
        begin
            x:=1/i*sign;
            sum:=sum+x;
            if (i=1) and (x>0) then write(i)
            else if (i<>1) and (x>0) then write(' + 1/',i)
            else write(' - 1/',i);
            i:=i+2;
            sign:=sign*-1;
        end;
    writeln(' = ',sum:4:2);
    readln;
end.
