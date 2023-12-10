Program Grades (Input,Output);

Uses CRT;

Var
  Gr1,
  Gr2,
  Gr3,
  Gr4: Real;

Begin
  clrscr;
  Write ('Enter grade number 1: ');
  ReadLn (Gr1);
  Write ('Enter grade number 2: ');
  ReadLn (Gr2);
  Write ('Enter grade number 3: ');
  ReadLn (Gr3);
  Write ('Enter grade number 4: ');
  ReadLn (Gr4);
  Writeln;
  Write ('The average of the grades is ');
  WriteLn ((Gr1+Gr2+Gr3+Gr4)/4:2:1);
  Writeln;
  WriteLn;
  WriteLn ('Press Enter to continue..');
  Readln;
End.