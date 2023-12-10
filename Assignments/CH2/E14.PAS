PROGRAM votes (input,output);
     {This program willall you enter the number of votes, and will show the votes for each person, and the percent of people who voted for them.}

USES
  CRT;
CONST
  COL = 15;  {width of each column}

VAR
  smitvot,
  jonevot,
  total :integer;
  smitper,
  joneper,
  totalper :real;

Begin
  clrscr;
  Textcolor (red);
  writeln ('                      -VOTE ANALYSIS-');
  Writeln;
  textcolor (Lightblue);
  write ('Enter the number of votes for Smith: ');
  Textcolor (white);
  readln (smitvot);
  textcolor (Lightblue);
  write ('Enter the number of votes for Jones: ');
  Textcolor (white);
  readln (jonevot);

  Total := smitvot+jonevot;
  Smitper := (smitvot/total) *100;
  joneper := (jonevot/total) *100;
  totalper := smitvot+jonevot;

  writeln;
  textcolor (lightgreen);
  writeln ('Name':col, 'Votes':col, 'Percent':col);
  textcolor (lightred);
  writeln ('Smith':col, smitvot:col, smitper:col:2);
  writeln ('Jones':col, jonevot:col, joneper:col:2);
  writeln;
  Textcolor (yellow);
  writeln ('Total':col, Total:col, Totalper:col:2);
  writeln;
  textcolor (27);
  write ('Press any key to continue..');
  readkey;
end.