PROGRAM  Three (Output);
     {This program prints all of the numbers which are part of the series:
     3, 6, 9, 12 ... 99.}

USES
  CRT;
VAR
  Sum : Integer;

Begin
  TextColor (0);
  ClrScr;
  Sum := 0;
  TextColor (LightGreen);
  While Sum < 99 do
    Begin
      Sum := Sum + 3;
      Write (Sum, ' ');
    End;
 WriteLn;
 WriteLn;
 TextColor (27);
 Write ('Press any key to continue..');
 ReadKey;
 End.