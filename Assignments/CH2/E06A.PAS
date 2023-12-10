PROGRAM  ParkingFees  (Input,Output);
     {This program will tell you how much you owe for parking fees
     at the University of Swellaware.}

USES
  CRT;
CONST
  FEE = 22.75;
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
  WriteLn ('You owe $',Fee *Tickets :0:2);
  WriteLn;
  Textcolor (29);
  Write ('Press Enter to continue..');
  ReadKey;
End.