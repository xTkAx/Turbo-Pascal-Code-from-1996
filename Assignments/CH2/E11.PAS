Program  ComboOfChange (Input,Output);
  {This will tell you how many of each coin needed
   to give the change ammount entered by the user,
   and assuming the change is less than $1.00.}

Uses
  CRT;
Const
  Quarter = 25;
  Dime = 10;
  Nickel = 5;
  penny = 1;
Var
  Change:integer;

Begin
  TextColor (0);
  ClrScr;
  TextColor (lightred);
  Write ('Enter the ammount of change in cents: ');
  TextColor (white);
  ReadLn (Change);
  TextColor (lightGreen);
  WriteLn;
  WriteLn ('Change:');
  WriteLn ('  Quarters: ',change div Quarter);
  WriteLn ('  Dimes: ',(Change mod Quarter)div Dime);
  WriteLn ('  Nickels: ',((Change mod Quarter)mod Dime)div Nickel);
  Writeln ('  Pennies: ',(((Change mod Quarter)mod Dime)mod Nickel)Div Penny);
  WriteLn;
  WriteLn;
  TextColor (27);
  WriteLn ('Press any key to continue..');
  Readkey;
end.