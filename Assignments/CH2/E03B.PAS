PROGRAM  PriceOfHamburgers  (Input,Output);
     {This program will tell you the cost fot the ammount of hamburgers
     that you want to buy.  The Sales tax of 6% will be added on.}

USES
  CRT;
CONST
  STax = 0.06;
VAR
  Price,
  Number:real;

Begin
  clrscr;
  Textcolor (LightRed);
  Write ('Enter the price of Hamburgers: ');
  Textcolor (white);
  ReadLn (Price);
  Textcolor (LightRed);
  Write ('How many Hamburgers would you like to buy: ');
  Textcolor (white);
  ReadLn (Number);
  WriteLn;
  WriteLn;
  Textcolor (LightGreen);
  WriteLn ('The cost of the ', Number :0:0, ' Hamburgers will be  $', Number * Price :0:2);
  Writeln;
  WriteLn ('Sales Tax                              $', STax * (Number * Price) :0:2);
  WriteLn;
  WriteLn ('Total Cost is                          $', (STax * (Number * Price))+(Number * Price) :0:2);
  WriteLn;
  WriteLn;
  Textcolor (29);
  Write ('Press Enter to continue..');
  ReadKey;
End.