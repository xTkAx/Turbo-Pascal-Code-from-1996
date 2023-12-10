Program FlowerPot (Input,Output);
  {This will tell you how many boxes you will need.}

Uses
  CRT;
Var
  Pot:integer;

Begin
  ClrScr;
  TextColor (lightred);
  Write ('Enter the number of flower pots: ');
  TextColor (white);
  ReadLn (pot);
  TextColor (lightGreen);
  WriteLn;
  WriteLn ('You will need: ',Pot div 9,' large box(es)');
  WriteLn ((Pot mod 9)div 4:16,' big box(es)');
  WriteLn (((pot mod 9)mod 4)div 1:16,' small box(es)');
  TextColor (lightblue);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue.');
  Readkey;
end.