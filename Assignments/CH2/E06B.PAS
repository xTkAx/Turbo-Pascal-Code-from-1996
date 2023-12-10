PROGRAM  ParkingFees  (Input,Output);
     {This program will tell you how much you owe for parking fees, and how
     long it will take you to pay it off at the University of Swellaware.}

USES
  CRT;
CONST
  FEE = 27.55;
  Payment = 15.00;
VAR
  Tickets:integer;

Begin
  TextColor (0);
  clrscr;
  Textcolor (LightGreen);
  Write ('How many tickets do you have? ');
  Textcolor (white);
  ReadLn (Tickets);
  WriteLn;
  WriteLn;
  Textcolor (LightBlue);
  WriteLn ('You owe $',Fee * Tickets :0:2);
  WriteLn ('It will take you ',(Fee * Tickets) / Payment :0:2,
           ' weeks to pay off your fine.');
  WriteLn;
  Textcolor (29);
  Write ('Press any key to continue..');
  ReadKey;
End.