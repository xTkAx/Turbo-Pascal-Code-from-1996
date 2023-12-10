Program Sums (Input,Output);
       {This program adds all of the numbers between
       the two numbers entered by the user}

Uses
  CRT;

Var
  num1,num2,
  counter:integer;
  sum:real;

Begin
  ClrScr;
  TextColor (lightgreen);
  Write ('Enter a number: ');
  TextColor (white);
  ReadLn (num1);
  TextColor (lightgreen);
  WriteLn;
  WriteLn ('Enter a second number which is');
  Write ('larger than the first number: ');
  TextColor (white);
  ReadLn (num2);
  TextColor (lightRed);
  WriteLn;
  WriteLn;
  sum := 0.0;
  for counter := num1 to num2 do
    sum := sum + counter;
  WriteLn ('The sum of all the numbers between');
  WriteLn ('the two numbers entered is ',sum:1:2);
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue...');
  readkey;
end.
