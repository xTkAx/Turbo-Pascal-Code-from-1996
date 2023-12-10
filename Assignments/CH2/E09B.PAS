Program Calories (Input,Output);
  {This will tell you how long you have to jog to burn calories}

Uses
  CRT;
Var
  sushi:real;

begin
  Textcolor (blue);
  clrscr;
  Write ('How many slices of sushi? ');
  Textcolor (red);
  ReadLn (sushi);
  WriteLn;
  Textcolor (Lightblue);
  Writeln ('You will have to jog ',(sushi*120)/240:1:2,' hours');
  Textcolor (white);
  WriteLn;
  WriteLn;
  Writeln ('Press any key to continue.');
  Readkey;
end.
