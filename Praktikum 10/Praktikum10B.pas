program contoh_looping_array;
uses crt;
Var
    X : array[1..10] of Integer;
    Terbesar: Integer;
    i : Integer;
Begin
    clrscr;
    For i:=1 to 10 do 
    Begin
    Write('Input data ke-', i,'= '); 
    Readln(X[i]);
    writeln;
    End;
    Terbesar := X[1];
    For i:=2 to 10 do 
        Begin
            If X[i] > Terbesar then Terbesar := X[i];
        End;
    Writeln('Nilai terbesar dari 10 bilangan adalah ', Terbesar); 
    Readln;
End.
