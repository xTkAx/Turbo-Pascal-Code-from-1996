PROGRAM SquareCubed (Input,Output);
       {This program writes the Numbers beteen the two entered by the user,
       and it shows the squared and the cubed value.}

USES
  CRT;
VAR
  Num1, Num2,
  Counter, Sum: Integer;

Begin
  ClrScr;
  TextColor (lightgreen);
  Write ('Enter a number:  ');
  TextColor (white);
  ReadLn (Num1);
  TextColor (lightgreen);
  Write ('Enter another number:  ');
  TextColor (white);
  ReadLn (Num2);
  TextColor (lightBlue);
  WriteLn;
  WriteLn;
  WriteLn ('NUMBER  SQUARED  CUBED');
  sum := 0;
  for counter := Num1 to Num2 do
      WriteLn (Counter:4, (Counter * Counter):8,
              (Counter * Counter * Counter):8);
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue...');
  readkey;
end.
