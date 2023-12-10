Program Table (Output);

Uses
  CRT;
Var
  int1,
  int2:integer;

Begin
  clrscr;
  Write ('Enter an integer: ');
  ReadLn (int1);
  Write ('Enter an integer: ');
  ReadLn (int2);
  WriteLn;
  WriteLn ( int1,' + ',int2,' = ',int1+int2);
  WriteLn ( int1,' - ',int2,' = ',int1-int2);
  WriteLn ( int1,' * ',int2,' = ',int1*int2);
  WriteLn ( int1,' div ',int2,' = ',int1 div int2);
  WriteLn ( int1,' mod ',int2,' = ',int1 mod int2);
  WriteLn;
  Writeln;
  WriteLn ('Press Enter to continue..');
  Readln;
End.