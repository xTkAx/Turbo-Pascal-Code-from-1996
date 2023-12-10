 Program Triangle (Output);
 {This program shows you a Triangle.}
 Uses
   CRT;
 VAR
   Counter, Counter2, Sum : integer;

 Begin
   TextColor (0);
   ClrScr;
   TextColor (LightGreen);
   Sum := 0;
   for counter := 1 to 6 do
     Begin
       Sum := Sum + 1;
       for counter2 := sum downto 1 do
       Write ('* ');
       WriteLn;
     end;
   TextColor (27);
   Writeln;
   WriteLn;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.