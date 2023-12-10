Program Equation (Output);

Uses CRT;

Var
  A,
  B,
  C,
  X: real;

Begin
  ClrScr;
  A:= 20;
  B:= 10;
  C:= 30;
  Write ('The two roots are ');
  writeln ((-B+(Sqrt(b*b-4*A*C)))/(2*A));
  WriteLn (X);
  WriteLn (' and ');
  writeln((-B-(Sqrt(b*b-4*A*C)))/(2*A));
  WriteLn (X);
  WriteLn;
  Writeln ('Press Enter to continue..');
  ReadLn
End.
