Program AreaOfTriangle (Input,Output);
  {accepts the base, and height from the user, and gives the area
   of the triangle, using the formula, A=1/2B*H.}

Uses
  CRT;
Var
  Base,
  Height :integer;

Begin
  clrscr;
  Write ('Enter the base in centimeters: ');
  ReadLn (Base);
  Write ('Enter the height in centimeters: ');
  ReadLn (Height);
  Writeln;
  Write ('The area is ',1/2*base*height:0:2);
  WriteLn (' squared centimeters.');
  WriteLn;
  Writeln;
  WriteLn ('Press Enter to continue..');
  Readln;
End.