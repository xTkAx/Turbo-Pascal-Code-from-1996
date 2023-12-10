 Program MultiplicationTable (Output);
 {This program shows you a multiplication table.}
 Uses
   CRT;

 begin
   TextColor (0);
   ClrScr;
   TextColor (LightGreen);
   WriteLn (1:5, 2:5, 3:5, 4:5, 5:5);
   WriteLn (2:5, 2*2:5, 3*2:5, 4*2:5, 5*2:5);
   WriteLn (3:5, 2*3:5, 3*3:5, 4*3:5, 5*3:5);
   WriteLn (4:5, 2*4:5, 3*4:5, 4*4:5, 5*4:5);
   WriteLn (5:5, 2*5:5, 3*5:5, 4*5:5, 5*5:5);
   WriteLn;
   TextColor (27);
   Writeln;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.