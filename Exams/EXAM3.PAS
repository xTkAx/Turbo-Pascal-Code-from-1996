PROGRAM EvenNums (Output);
     {This program will sum the even numbers betwwn 1 and 50.}

USES
  CRT;
VAR
  Counter, Sum : Integer;

Begin
  TextColor (0);
  ClrScr;
  TextColor (LightGreen);
  WriteLn ('Number   Sum');
  Sum := 0;
  For Counter := 1 to 50 do
    Begin
    Write (Counter);
      If counter MOD 2 = 0
        Then Sum := Sum + Counter;
    WriteLn (Sum:5);
    End;
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue...');
  ReadKey;
  End.