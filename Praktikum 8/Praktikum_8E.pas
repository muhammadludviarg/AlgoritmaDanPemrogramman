{Contoh program yang menunjukkan perbedaan transfer parameter
By Value dan By Location}
Program Contoh8E;
uses crt;
    procedure subpro( a:integer; var b:integer);
    var c:integer;
    begin
    c:=a; a:=b; b:=c;
    end;
var x,y:integer;
begin
    clrscr;
    x:=5; y:=23;
    subpro(x,y);
    writeln('tranfer by value: x= ',x);
    writeln('tranfer by location: y= ',y);
end.