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
  Sum := 1;
  If Num <= 0
    Then If Num < 0
           Then WriteLn (Num, '! is undefined.')
           Else Begin
                  Write (Num ,'! = ');
                  Num := 1;
                  For Counter := Num downto 1 do
                    Sum := Sum * Counter;
                    Write (Sum);
                End
    Else Begin
           Write (Num ,'! = ');
           For Counter := Num downto 1 do
             Sum := Sum * Counter;
             Write (Sum)
          End;
  WriteLn;
  WriteLn;
  Textcolor (27);
  WriteLn ('Press any key to continue...');
  ReadLn;
End.

