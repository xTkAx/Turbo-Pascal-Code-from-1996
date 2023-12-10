Program  PriceOfHamburgers  (Input,Output);
     {This program will tell you the cost fot the ammount of hamburgers
     That you want to buy.}

Uses
  CRT;
Var
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
  WriteLn ('The cost of the ', Number :0:0, ' Hamburgers will be $', Number * Price :0:2);
  Writeln;
  Textcolor (29);
  Write ('Press Enter to continue..');
  Readln;
End.