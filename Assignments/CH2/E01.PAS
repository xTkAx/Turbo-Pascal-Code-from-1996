Program  GasCost (Input,Output);

Uses
  CRT;
Var
  Mileage,
  MPG:real;

Begin
  clrscr;
  Textcolor (LightRed);
  Write ('Enter Monthly Mileage: ');
  Textcolor (white);
  ReadLn (Mileage);
  Textcolor (LightRed);
  Write ('Enter MPG: ');
  Textcolor (white);
  ReadLn (MPG);
  WriteLn;
  WriteLn;
  Textcolor (LightGreen);
  WriteLn ('You spend $', Mileage / MPG * 1.15 :0:2, ' a month on gas');
  Writeln;
  Textcolor (29);
  Write ('Press Enter to continue..');
  Readln;
End.