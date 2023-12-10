Program MarkSvp (Input, Output);
     {A program that asks a student to enter a series of grades,
      and calculates the student's grade point total.}

Uses
  CRT;
Const
  PA = 1.0;
  PB = 0.8;
  PC = 0.6;
  PD = 0.4;
  PF = 0.0;
Var
  Num,Try: integer;
  Point: Real;
  Grade: Char;

Begin
  ClrScr;
  Point := 0.0;
  Textcolor (lightGreen);
  Write ('How many grades are to be entered? ');
  TextColor (White);
  ReadLn (Num);
  WriteLn;
  For Try := 1 to Num do
    Begin
      Repeat
      TextColor (LightRed);
      Write ('Enter grade ', Try, ': ');
      TextColor (white);
      ReadLn (Grade);
      If (Grade = 'A') or (Grade = 'a')
        Then
          Point := Point + PA
        Else
          If (Grade = 'B') or (Grade = 'b')
            Then
              Point := Point + PB
            Else
              If (Grade = 'C') or (Grade = 'c')
                Then
                  Point := Point + PC
                Else
                  If (Grade = 'D') or (Grade = 'd')
                    Then
                      Point := Point + PD
                    Else
                      If (Grade = 'F') or (Grade = 'f')
                        Then
                          Point := Point + PF
                        Else
                          Begin
                            Textcolor (yellow);
                            WriteLn ('You have entered an improper grade! Try again..');
                          End
      Until (Grade = 'A') or (Grade = 'a') or (Grade = 'B') or
            (Grade = 'b') or (Grade = 'C') or (Grade = 'c') or
            (Grade = 'D') or (Grade = 'd') or (Grade = 'F') or
            (Grade = 'f')
  End;
  WriteLn ;
  TextColor (LightBlue);
  WriteLn ('Grade point total = ', Point:2:2);
  WriteLn ;
  WriteLn ;
  TextColor (27);
  Write ('Press any key to continue..');
  ReadKey;
  End.

