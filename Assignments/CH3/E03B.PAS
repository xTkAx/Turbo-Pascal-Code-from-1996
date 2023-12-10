PROGRAM PopsPlaceWages (Input, Output);
     {This program will allow you to input the number of hours that an
      employee worked for the week, and the hourly rate of that employee
      and will return the wages that the employee made that week.}

USES
  CRT;
CONST
  MxHrs = 40;
  Taxes = 0.18;
VAR
  Tax: Char;
  Total, Wage: Real;
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
  TextColor (LightGreen);
  Write ('Exempt (Y/N)? ');
  TextColor (White);
  ReadLn (Tax);
  WriteLn;
  WriteLn;
  TextColor (lightBlue);
  If (Tax = 'Y') or (tax = 'y')
    Then Begin
           If hrs > MxHrs
             Then WriteLn ('Wages earned = $',((hrs - MxHrs) * (wage * 1.5)) + (MxHrs * Wage):0:2)
             Else WriteLn ('Wages earned = $',(Hrs * Wage):0:2);
           WriteLn ('NO TAXES DEDUCTED');
           End
    Else Begin
           If hrs > MxHrs
             Then begin
                    WriteLn ('Wages earned = $',((hrs - MxHrs) * (wage * 1.5)) + (MxHrs * Wage):0:2);
                    Total :=((hrs - MxHrs) * (wage * 1.5)) + (MxHrs * Wage);
                  end
             Else Begin
                    WriteLn ('Wages earned = $',(Hrs * Wage):0:2);
                    Total := (Hrs * Wage);
                  end;
           WriteLn ('Taxes deducted = $', total * Taxes:0:2 );
           WriteLn ('Wages after taxes = $', total - (Total * taxes):0:2);
           End;
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue..');
  ReadKey;
End.