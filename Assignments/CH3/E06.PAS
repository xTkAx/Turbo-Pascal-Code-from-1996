PROGRAM AmysGE (Input,Output);
       {This program writes the mailing label for the number of
       boxes entered by the user.}

USES
  CRT;
VAR
  Boxes,
  Counter, Sum: Integer;

Begin
  ClrScr;
  TextColor (lightgreen);
  Write ('How many boxes? ');
  TextColor (white);
  ReadLn (Boxes);
  TextColor (lightBlue);
  WriteLn;
  WriteLn;
  sum := 0;
  for counter := 1 to Boxes do
    Begin
      sum := sum + 1;
      WriteLn ('AMY''S GARDEN EMPORIUM');
      WriteLn ('  SUNTAN, IOWA 12345');
      WriteLn (' Box number ',sum, ' of ', Boxes);
      WriteLn;
      WriteLn;
    End;
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue...');
  readkey;
end.
