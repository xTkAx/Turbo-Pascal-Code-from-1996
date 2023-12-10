PROGRAM NumGrades (Input,Output);
       {This program asks you how many grades you want to enter and it
       accepts those grades and returns the total, and the average.}

USES
  CRT;

VAR
  Grades, Grade, Counter, Sum: Integer;


Begin
  TextColor (0);
  ClrScr;
  TextColor (LightGreen);
  Write ('How many grades? ');
  TextColor (White);
  ReadLn (Grades);
  WriteLn;
  Sum := 0;
  For Counter := 1 to Grades do
    Begin
      TextColor (LightGreen);
      Write ('Enter grade ', counter, ' of ', Grades,': ');
      TextColor (White);
      ReadLn (Grade);
      While (Grade > 100) or (grade < 0) do
        Begin
         Write (grade);
         TextColor (LightGreen);
         Write (' is not an acceptable grade.  Please re-enter grade ',
                  counter, ' of ', Grades,' : ');
         TextColor (White);
         ReadLn (Grade)
        End;
      Sum := Sum + Grade;
    End;
  WriteLn;
  WriteLn;
  TextColor (LightBlue);
  WriteLn ('The total is ',Sum);
  WriteLn ('The average is ', sum / grades :0:2);
  WriteLn;
  WriteLn;
  Textcolor (27);
  WriteLn ('Press any key to continue...');
  ReadLn;
End.

