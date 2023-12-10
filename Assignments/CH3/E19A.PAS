PROGRAM Digits (Input,Output);
     {This program accepts a non-negative integer and
      writes the digits on a seperate line.}

USES
  CRT;
VAR
  Num : Integer;

Begin
  TextColor (0);
  ClrScr;
  TextColor (LightGreen);
  Write ('Enter a non-negative number: ');
  TextColor (White);
  ReadLn (num);
  WriteLn;
  TextColor (LightBlue);
  WriteLn (Num Div 1000);
  WriteLn ((Num Mod 1000) Div 100);
  WriteLn (((Num Mod 1000) Mod 100) Div 10);
  WriteLn ((((Num Mod 1000) Mod 100) Mod 10) Div 1);
  TextColor (27);
  Writeln;
  WriteLn;
  Writeln ('Press any key to continue...');
  ReadKey;
end.