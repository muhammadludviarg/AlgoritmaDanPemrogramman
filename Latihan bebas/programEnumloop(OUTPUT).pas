program Enumloop(OUTPUT);
uses crt;
var 
    month : (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
begin
    clrscr;
    for month := Jan to Dec do 
        begin
            writeln (ord(month), ' ')
        end;
end.