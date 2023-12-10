PROGRAM QODS (Input, Output);

USES
  CRT;
CONST
 MxWt = 60.0;
 MxSz = 4.0;
VAR
  weight, height, length, width: Real;

Begin
  TextColor (0);
  Clrscr;
  TextColor (LightGreen);
  Write ('Enter weight of package in pounds: ');
  TextColor (White);
  ReadLn (weight);
  TextColor (LightGreen);
  Write ('Enter length of package in feet: ');
  TextColor (White);
  ReadLn (length);
  TextColor (LightGreen);
  Write ('Enter width of package in feet: ');
  TextColor (White);
  ReadLn (Width);
  TextColor (LightGreen);
  Write ('Enter height of package in feet: ');
  TextColor (White);
  ReadLn (height);
  WriteLn;
  WriteLn;
  TextColor (lightBlue);
  If Weight > MxWt
    Then If (Length * Width * height) > MxSz
           Then WriteLn ('The package is too heavy and too large.')
           Else WriteLn ('The package is too heavy')
    Else If (Length * Width * height) > MxSz
         Then WriteLn ('The package is too large.')
         Else WriteLn ('The package is acceptable.');
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue..');
  ReadKey;
End.