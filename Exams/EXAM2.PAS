Program  Exam2 (Input, Output);
     {This program reads the number of games played, number of wins, ties
     and losses of the "Ultimate" Hockey team: Toronto Maple Leafs, and
     produces a percentage.}

USES
  CRT;
CONST
  WP = 4;
  TP = 2;
VAR
  Win, Loss, Tie, Games : integer;

Begin
  Textcolor (0);
  ClrScr;
  TextColor (Blue);
  WriteLn ('THE TORONTO MAPLE LEAFS RULE':50);
  Textcolor (LightGreen);
  Write ('Number of games played: ');
  TextColor (White);
  ReadLn (Games);
  Textcolor (LightGreen);
  Write ('Number of wins: ');
  TextColor (White);
  ReadLn (Win);
  Textcolor (LightGreen);
  Write ('Number of ties: ');
  TextColor (White);
  ReadLn (Tie);
  Textcolor (LightGreen);
  Write ('Number of losses: ');
  TextColor (White);
  ReadLn (Loss);
  Textcolor (LightGreen);
  WriteLn;
  WriteLn;
  TextColor (LightBlue);
  WriteLn  ('Total points: ', (Win*WP) + (Tie*TP));
  WriteLn;
  WriteLn;
  WriteLn ('Percentage Won: ', Win / Games * 100:0:1, '%');
  WriteLn ('Percentage Tied: ', Tie / Games * 100:0:1, '%');
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue...');
  ReadKey;
  End.

