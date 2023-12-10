Program SumOfNumbers (Input,Output);
       {This calculates the sum of the numbers from one to fifty.}

Uses
  CRT;

Var
  NumOf,
  NumCounter,
  Num,
  Ans,
  Sum:integer;


Begin
  ClrScr;
  TextColor (LightGreen);
  Write ('Number     Sum (Enter to start).');
  Readln;
  WriteLn;
  TextColor (LightBlue);
  Num := 1;
  Sum := 0;
  For NumCounter := 1 to 50 do
    Begin
      NumOf := NumCounter Mod 2;
      If Not (NumOf = 0)
        Then
          Sum := Sum + NumCounter;
      WriteLn (NumCounter:5,Sum:10);
    End;
  WriteLn;
  WriteLn;
  Textcolor (27);
  WriteLn ('Press any key to continue...');
  ReadLn;
End.

