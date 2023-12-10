 Program Triangle (Output);
 {This program shows you a Triangle.}
 Uses
   CRT;
 VAR
   Counter, Counter2, counter3, Sum, Sum2: integer;

 Begin
   TextColor (0);
   ClrScr;
   TextColor (LightGreen);
   Sum := 6;
   for counter := 1 to 6 do
     Begin
       Sum := Sum - 1;
       Sum2:= 0;
       for counter2 := 1 to sum do
         Write (' ');
       sum2 := 6 - sum;
       for counter3 := Sum2 downto 1 do
       Write ('*');
       WriteLn;
     end;
   TextColor (27);
   Writeln;
   WriteLn;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.