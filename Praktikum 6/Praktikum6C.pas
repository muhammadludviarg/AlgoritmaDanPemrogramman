{Contoh Program Continue}
Program contoh_continue;
var i:integer;
begin
    for i:=1 to 6 do
    begin
        if (i=4) then continue;
        writeln('Coba continue ',i);
    end;
    readln
end.