program HitungDigitIterasi;
uses crt;
function HitungDigit(a : integer) : integer;
begin
    if (a=0) then 
        begin
            HitungDigit := 1;
        end
        else
            begin
                a := a div 10;
                if (a=0) then
                    begin
                        HitungDigit := HitungDigit(a);
                    end
                    else 
                        begin
                            HitungDigit := HitungDigit(a) + 1;
                        end;
            end;
end;
var 
    bil : integer;
    JumlahDigit : integer;
begin
    clrscr;
    write ('Masukkan bilangan yang akan diperiksa : '); 
    readln (bil);
    JumlahDigit := HitungDigit(bil);
    writeln ('Banyaknya digit dari bilangan ', bil, ' adalah : ', JumlahDigit);
end.