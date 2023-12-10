PROGRAM  BurninCalories  (Input,Output);
     {This program will ask you how many slices of pizza you ate, and it
     will tell you how long you have to jog in order to burn off all the
     calories in the pizza.}

USES
  CRT;
CONST
  PizzaCal = 355;
  Jog = 240;
VAR
  Pizza:real;

Begin
  TextColor (0);
  clrscr;
  Textcolor (LightGreen);
  Write ('How many pieces of pizza did you eat? ');
  Textcolor (white);
  ReadLn (Pizza);
  WriteLn;
  WriteLn;
  Textcolor (LightBlue);
  WriteLn ('You will have to Jog ',(Pizza * PizzaCal) / jog :0:2, ' hours.');
  WriteLn;
  Textcolor (29);
  Write ('Press any key to continue..');
  ReadKey;
End.