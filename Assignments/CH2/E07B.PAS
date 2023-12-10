PROGRAM  AreaOfTriangle  (Input,Output);
     {This program will read the base and height entered by the user,
     and will return the area of the triangle in cm and inches.}

USES
  CRT;
CONST
  Inch = 2.54;
VAR
  Base,
  Height:integer;

Begin
  TextColor (0);
  clrscr;
  Textcolor (LightGreen);
  Write ('Enter the base in centimeters: ');
  Textcolor (white);
  ReadLn (Base);
  Textcolor (LightGreen);
  Write ('Enter the height in centimeters: ');
  Textcolor (white);
  ReadLn (Height);
  WriteLn;
  WriteLn;
  Textcolor (LightBlue);
  WriteLn ('The area of the triangle is ',(1/2) * Base * Height :0:2,
           ' square centimeters,');
  WriteLn ('or ',((1/2) * (Base / Inch) * (Height / Inch)) :0:2,
           ' square inches.');
  WriteLn;
  Textcolor (29);
  Write ('Press any key to continue..');
  ReadKey;
End.