Program StudntGrades (Input,Output);

Uses CRT;

Var
  Bruce,
  Tom,
  Heidi: Real;

Begin
  clrscr;
  Write ('Bruce     ');
  ReadLn (Bruce);
  Write ('Heidi     ');
  ReadLn (Heidi);
  Write ('Tom       ');
  ReadLn (Tom);
  Writeln;
  Write ('The average of their grades is ');
  WriteLn ((Bruce+Heidi+Tom)/3:2:1);
  Writeln;
  WriteLn;
  WriteLn ('Press Enter to continue..');
  Readln;
End.