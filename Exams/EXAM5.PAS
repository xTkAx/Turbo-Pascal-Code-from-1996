PROGRAM Exam5 (Output);
     {This program will show a times table up to 5*4.}

USES
  CRT;
VAR
  Counter, Counter2, Sum : Integer;

Begin
  TextColor (0);
  ClrScr;
  TextColor (LightGreen);
  For Counter := 1 to 4 do
    Begin
      For Counter2 := 1 to 5 do
       Write (Counter * Counter2:5);
       WriteLn;
    End;
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue...');
  ReadKey;
End.