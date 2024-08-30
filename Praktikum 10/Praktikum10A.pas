program contoh_array;
uses crt;
Var
    A: array[0..9] of Real;
    B: array[-10..20] of String;
    C: array['a'..'j'] of Boolean;
    X : array[1..10] of Integer;
begin
    clrscr;
    X[1] := 10;
    X[2] := X[1] - 5;
    X[3] := X[2] + X[1];
    writeln (x[3]);
    writeln (x[13]);
    writeln (A[10]);
end.
