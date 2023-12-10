PROGRAM  PoolService  (Input,Output);
     {This program will read the dimensions of the pool, entered by the user.
     and will determine how much it will cost to service the pool.}

USES
  CRT;
CONST
  Cost = 0.17;
VAR
  Length,
  Width:real;

Begin
  TextColor (0);
  clrscr;
  Textcolor (LightGreen);
  Write ('Enter the length of the pool: ');
  Textcolor (white);
  ReadLn (Length);
  Textcolor (LightGreen);
  Write ('Enter the width of the pool: ');
  Textcolor (white);
  ReadLn (Width);
  WriteLn;
  WriteLn;
  Textcolor (LightBlue);
  WriteLn ('The area to be serviced is ', Length * Width :0:2, ' square feet.');
  WriteLn ('It will cost $',(Length * Width) * Cost :0:2,
           ' to service the pool.');
  WriteLn;
  Textcolor (29);
  Write ('Press any key to continue..');
  ReadKey;
End.