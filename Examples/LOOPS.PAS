program OneToHundred ( output ) ;

uses
  CRT;
var
  a,
  b,
  c,
  sum:integer;

begin
  ClrScr;
  sum := 0;
  TextColor (lightgreen);
  for a:= 1 to 100 do
    Begin
      sum := sum + a;
      WriteLn (a:8,a*a:8, sum:8)
    End;
  TextColor (27);
  WriteLn;
  WriteLn ( 'Press any key to continue..');
  ReadLn;
end.