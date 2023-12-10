PROGRAM Factorial (Input,Output);
       {This program reads a positive integer and prints its facctorial.}

USES
  CRT;

VAR
  Num, Counter, Sum: Integer;


Begin
  TextColor (0);
  ClrScr;
  TextColor (LightGreen);
  Write ('Enter an integer: ');
  TextColor (White);
  ReadLn (Num);
  TextColor (LightBlue);
  Write (Num ,'! = ');
  Sum := 1;
  For Counter := Num downto 1 do
    Sum := Sum * Counter;
  Write (Sum);
  WriteLn;
  WriteLn;
  Textcolor (27);
  WriteLn ('Press any key to continue...');
  ReadLn;
End.

