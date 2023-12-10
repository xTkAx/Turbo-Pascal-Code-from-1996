Program  Exam1 (Input, Output);
     {accepts 2 numbers, and squared the numbers, and all the numbers
     between the two.}

USES
  CRT;
VAR
  Start, Finish, Counter : integer;

Begin
  Textcolor (0);
  ClrScr;
  Textcolor (LightGreen);
  Write ('Enter a starting number: ');
  TextColor (White);
  ReadLn (Start);
  Textcolor (LightGreen);
  Write ('Enter an ending number: ');
  TextColor (White);
  ReadLn (Finish);
  WriteLn;
  WriteLn;
  TextColor (LightBlue);
  WriteLn ('Number':10, 'Squared':10, 'Cubed':10);
  For counter := start to finish do
    WriteLn (Counter:8, Counter*counter:10, Counter*Counter*Counter:10);
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue...');
  ReadKey;
  End.

