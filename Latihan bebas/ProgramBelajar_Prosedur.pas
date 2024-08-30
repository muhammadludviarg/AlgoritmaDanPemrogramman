Program Belajar_Prosedur;
uses crt; 
var n,hasil:real; 
Procedure Pangkat2(var x:real); 
  begin 
    hasil:=n*n; 
  end; 
begin 
  clrscr;
  write('N= ');readln(n); 
  pangkat2(n); 
  writeln(' Pangkat 2 dari ',n:2,'= ',hasil:2); 
  readln 
end. 