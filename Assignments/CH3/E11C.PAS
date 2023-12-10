Program CalcAverage (Input, Output);
       {This calculates the average and total number of test grades
       entered by the user, and only accepts grades between 0
       and 100.}

Uses
  CRT;

Var
  NumGrades,
  Grade,
  Sum,
  Counter:Integer;
  Average:Real;

Begin
  ClrScr;
  TextColor(LightGreen);
  WriteLn;
  Write ('This program will accept as many grades as desired.');
  WriteLn ('  Until -1 is entered');
  Textcolor (LightGreen);
  Write ('Press ENTER to begin.');
  ReadLn;
  WriteLn;
  Sum := 0;
  numgrades := 0;
  Repeat
    TextColor (LightGreen);
    Write ('Enter a grade: ');
    Textcolor (white);
    ReadLn (grade);
    If grade >= 100
     Then
       WriteLn('Grade too large, please re-enter.')
     else If grade >= 0
            Then
              Begin
                Sum := Sum + grade;
                NumGrades := NumGrades + 1
              End
            Else if grade < -1
                   Then
                     WriteLn ('Grade is too small, please reenter.')
                   Else
                     Begin
                       TextColor (Red);
                       WriteLn ('End Program.')
                     End

  Until grade = -1;
  TextColor (LightMagenta);
  WriteLn;
  WriteLn ('The total is = ',Sum);
  WriteLn;
  Average := Sum/NumGrades;
  WriteLn ('The average grade is = ',Average:1:2);
  WriteLn;
  TextColor (27);
  WriteLn;
  WriteLn ('Press any key to continue..');
  ReadKey;
End.
