 Program Pyramid (Output);
 {This program shows you a pyramid.}
 Uses
   CRT;
 VAR
   Counter, Counter2, counter3, Sum, Sum2: integer;

 Begin
   TextColor (0);
   ClrScr;
   TextColor (LightGreen);
   Sum := 6;
   Sum2:= 1;
   for counter := 1 to 6 do
     Begin
       Sum := Sum - 1;
       for counter2 := 1 to sum do
         Write (' ');
       for counter3 := Sum2 downto 1 do
       Write ('*');
       sum2 := 2 + sum2;
       WriteLn;
     end;
   TextColor (27);
   Writeln;
   WriteLn;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.