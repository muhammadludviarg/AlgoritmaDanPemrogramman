program sorting;
uses crt;
Type 
    Larik = array [1..100] of integer; 
{Procedure InsertionSort(var data:larik; n:integer); 
var 
    i,j,key:integer; 
begin 
    for i:=2 to n do 
    begin 
        key:=data[i]; 
        j:=i-1; 
        while (j>0)and(data[j]<key) do begin 
            data[j+1]:=data[j]; 
            j:=j-1; 
    end; 
    data[j+1]:=key; 
    end; 
End; }
Procedure InsertionSort(var data:larik; n:integer); 
var 
    i,j,key:integer; 
begin 
    for i := (n-1) downto 1 do 
    begin 
        key:=data[i]; 
        j:=i+1; 
        while (j>0)and(j<n+1)and(data[j]>key) do begin 
            data[j-1]:=data[j]; 
            j:=j+1; 
    end; 
    data[j-1]:=key; 
    end; 
End;
var data : larik;
    i, n : integer;
begin
    clrscr;
    write ('berapa angka yang akan dimasukkan :'); readln (n);
    for i := 1 to n do 
    begin
        write ('masukkan data ke-',i,': '); readln (data[i]);
    end;
    InsertionSort(data,n);
    for i := 1 to n do 
    begin
        write (data[i],' ');
    end;
end.
