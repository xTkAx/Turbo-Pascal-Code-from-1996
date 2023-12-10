PROGRAM PopsPlaceWages (Input, Output);
     {This program will allow you to input the number of hours that an
      employee worked for the week, and the hourly rate of that employee
      and will return the wages that the employee made that week.}

USES
  CRT;
CONST
  MxHrs = 40;
VAR
  Wage: Real;
  Hrs: Integer;

Begin
  TextColor (0);
  Clrscr;
  TextColor (LightGreen);
  Write ('Enter the hours worked: ');
  TextColor (White);
  ReadLn (Hrs);
  TextColor (LightGreen);
  Write ('Enter the hourly rate: ');
  TextColor (White);
  ReadLn (Wage);
  WriteLn;
  WriteLn;
  TextColor (lightBlue);
  If hrs > MxHrs
    Then WriteLn ('Wages earned = $',((hrs - MxHrs) * (wage * 1.5)) + (MxHrs * Wage):0:2)
    Else WriteLn ('Wages earned = $',(Hrs * Wage):0:2);
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue..');
  ReadKey;
End.