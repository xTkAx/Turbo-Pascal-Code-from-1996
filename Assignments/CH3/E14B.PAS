Program Letter (Input, Output);
     {This program reads in letter grades for a class of an infinite
     ammount of students (d or better) is pass (e or f) is a fail,
     it ends when z is entered.}

Uses
  CRT;

Var
  Grade:Char;
  Counter,
  Passes,
  d,
  Fails:real;


Begin
  ClrScr;
  passes := 0;
  fails := 0;
  repeat
    begin
      TextColor (lightGreen);
      write ('Enter a grade (or Z to finish): ');
      TextColor (white);
      readln (grade);
      if (grade ='z') or (grade ='Z')
       then
         WriteLn
       else
         if (grade = 'e') or (grade = 'E') or (grade = 'F') or (grade = 'f')
           then fails := fails +1
           else if (grade = 'a') or (grade = 'A') or (grade = 'B')
                or (grade = 'b') or (grade = 'C') or (grade = 'c')
                or (grade = 'D') or (grade = 'd')
                  Then Passes := Passes +1
                  Else Begin
                         TextColor (lightRed);
                         WriteLn ('Enter the grade again.');
                       end
    end;
  until (grade ='z') or (grade ='Z');
  TextColor (lightBlue);
  writeln;
  writeln (passes:2:0,' students passed.');
  writeln (fails:2:0,' students failed.');
  TextColor (Red);
  WriteLn;
  d:= passes +fails;
  WriteLn (((passes/d)*100):2:1,'% passed.');
  WriteLn (((fails/d)*100):2:1,'% failed.');
  TextColor (27);
  WriteLn;
  WriteLn;
  write ('Press any key to continue..');
  readkey;
end.

