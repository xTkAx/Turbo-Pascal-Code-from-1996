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
  WriteLn ('You will need ',pot div 4,' big boxes,');
  WriteLn ('and ',pot mod 4,' small boxes.');
  TextColor (lightblue);
  WriteLn;
  WriteLn;
  WriteLn ('Enter to continue.');
  ReadLn;
end.