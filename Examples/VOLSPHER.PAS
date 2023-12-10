Program VolSphere (Output);
  {Program takes the radius, and using the formula,
   V=4/3 Pi R cubed, gives the answer.}
Uses CRT;

Var
   R: integer;

Begin
  clrscr;
  WriteLn ('Calculate the volume of a sphere');
  Write ('Radius = ');
  R := 5;
  WriteLn (R);
  Write ('Volume = ');
  WriteLn (4/3*3.14*(R*R*R));
  Writeln;
  Writeln;
  WriteLn ('Press Enter to continue..');
  Readln;
End.