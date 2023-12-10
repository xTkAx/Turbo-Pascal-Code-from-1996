PROGRAM  PoundsPerSquareInch  (Input,Output);
     {This program will tell you what the pounds per inch
     ratio for the values entered is.}

USES
  CRT;
VAR
  Height,
  Pnds:integer;

Begin
  TextColor (0);
  clrscr;
  Textcolor (LightGreen);
  Write ('Enter Height in Inches: ');
  Textcolor (white);
  ReadLn (Height);
  Textcolor (LightGreen);
  Write ('Enter weight in pounds: ');
  Textcolor (white);
  ReadLn (Pnds);
  WriteLn;
  WriteLn;
  Textcolor (LightBlue);
  WriteLn ('Pounds per Inch = ',Pnds / Height :0:2);
  WriteLn;
  Textcolor (29);
  Write ('Press Enter to continue..');
  ReadKey;
End.