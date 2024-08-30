{ Contoh program yang menunjukkan identifier global dapat 
digunakan di dalam sub program selama tidak dideklarasikan 
ulang sebagai identifier lokal}
Program Contoh9E;
uses crt;
var x,y:integer; //variabel x tidak akan tembus ke prosedur karena di dalam prosedur dideklarasikan lagi variabel x
    procedure subpro(a:integer);
        var x:char; // variabel x di deklarasikan ulang, tapi ini adalah x yang berbeda dalam. 
        begin
        x:='C';
        y:=a+4;
        writeln('Nilai di dalam subpro: x= ',x,' y= ',y);
        end;
begin
    clrscr;
    x:=6;
    y:=10;
    subpro(y);
    writeln('Nilai di program utama: x= ',x,' y= ',y);
end.