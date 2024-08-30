{Contoh Program Break}
Program contoh_break;
uses crt;
var i:integer;
begin
    clrscr;
    for i:=1 to 6 do
    begin
    if (i=4) then break; //break artinya looping berhenti, kalau exit seluruh program berhenti.
    writeln('Coba Break ',i);
    end;
end.
