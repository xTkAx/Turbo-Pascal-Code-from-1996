PROGRAM AverageWeight (Input,Output);
    {This prograwm will accept the values for the lab tests
    and will tell you the average weight.}

USES
  CRT;
VAR
  Weight1,
  Weight2:real;

Begin
  Textcolor (0);
  ClrScr;
  TextColor (LightBlue);
  Write ('Enter sample weight #1 in grams: ');
  TextColor (White);
  ReadLn (Weight1);
  TextColor (LightBlue);
  Write ('Enter sample weight #2 in grams: ');
  TextColor (White);
  ReadLn (Weight2);
  WriteLn;
  WriteLn;
  TextColor (lightGreen);
  WriteLn ('Total Weight is: ', Weight1 + Weight2  :0:2, 'g');
  WriteLn ('Average Weight is: ', (Weight1 + Weight2) / 2  :0:2, 'g');
  WriteLn;
  TextColor (27);
  WriteLn ('Press any key to continue..');
  ReadKey;

End.