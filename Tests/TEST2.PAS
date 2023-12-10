PROGRAM NumberOfPeople (Input,Output);
    {This prograwm will read the total of students in
    each team, and tells how many will be left over.}

USES
  CRT;
VAR
  Team,
  Student:Integer;

Begin
  Textcolor (0);
  ClrScr;
  TextColor (LightBlue);
  Write ('Enter the total number of students: ');
  TextColor (White);
  ReadLn (Student);
  TextColor (LightBlue);
  Write ('Enter the total number of teams: ');
  TextColor (White);
  ReadLn (Team);
  WriteLn;
  WriteLn;
  TextColor (lightGreen);
  WriteLn ('There are ',Student DIV team,
           ' on each team with ',Student MOD Team, ' left over.');
  WriteLn;
  TextColor (27);
  WriteLn ('Press any key to continue..');
  ReadKey;

End.