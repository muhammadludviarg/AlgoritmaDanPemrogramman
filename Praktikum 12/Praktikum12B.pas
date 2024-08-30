program faktorial_bilangan;
uses crt;
{function faktorial (x:integer):integer;
    var i, result : integer;
    begin
        result := 1;
        for i:=x downto 1 do 
        begin
            result:=result*i;
            faktorial := result;
        end;
    end;}

function faktorial (x:integer):integer;
begin
    if x=1 then faktorial := 1
    else faktorial := x*faktorial(x-1); 
end;
var a : integer;
begin
    clrscr;
    a := faktorial(5);
    write(a);
end.