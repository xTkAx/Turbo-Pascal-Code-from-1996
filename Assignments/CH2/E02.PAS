Program  NumberAnswers (Input,Output);

Uses
  CRT;
Var
  num1,
  num2:real;

Begin
  clrscr;
  Textcolor (Lightgreen);
  Write ('Enter a number: ');
  Textcolor (white);
  ReadLn (num1);
  Textcolor (Lightgreen);
  Write ('Enter another number: ');
  Textcolor (white);
  ReadLn (Num2);
  WriteLn;
  WriteLn;
  Textcolor (Lightred);
  WriteLn ('Sum = ', Num1 + Num2 :0:2);
  WriteLn ('Difference = ', Num1 - Num2 :0:2);
  WriteLn ('Product = ', Num1 * Num2 :0:2);
  WriteLn ('Quotient = ', Num1 / Num2 :0:2);
  WriteLn;
  Writeln;
  Textcolor (33);
  Write ('Press Enter to continue..');
  Readln;
End.