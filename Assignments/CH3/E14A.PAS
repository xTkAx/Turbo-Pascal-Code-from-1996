 Program Students (Input, Output);
      {This program keeps track of 20 of the students who passed.
       showing the number of passes and the number of fails.}

 Uses
   CRT;
 Var
   Grade:Char;
   Pass, Fail, Count: Integer;

 Begin
   ClrScr;
   pass:=0;
   fail:=0;
   For count:=1 To 20 Do
     Begin
       TextColor (lightGreen);
       Write ('Enter a Grade: ');
       TextColor (white);
       Readln (grade);
       If (grade = 'A') or (grade = 'a') or (grade = 'b')
          or (grade = 'c') or (grade = 'd') or (grade = 'B') or (Grade = 'C')
          or (Grade = 'D')
         Then
           pass:= pass + 1
         Else If (grade = 'E') or (Grade = 'f') or (Grade = 'F')
                 or (Grade = 'e')
                Then
                  fail:= fail + 1
                Else
                  Begin
                    Count := count - 1;
                    TextColor (lightred);
                    WriteLn ('Grade not valid.')
                  End
     End;
   TextColor (LightBlue);
   Writeln;
   Writeln (pass,' students passed');
   Writeln (fail,' students failed');
   WriteLn;
   Writeln;
   TextColor (27);
   Writeln ('Press any key to continue...');
   Readkey;
 End.