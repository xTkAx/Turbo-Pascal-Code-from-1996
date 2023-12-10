 Program AForLoop (Output);
 {This program prints a column of numbers using a WHILE loop.}

 Uses
   crt;
 Var
   Num:Real;

 Begin
   TextColor (lightgreen);
   clrScr;
   num:= 61;
   While num >= 12 do
     begin
       WriteLn (num - 10:1:0);
       Num:= num-10;
     end;
   WriteLn;
   TextColor (27);
   Writeln;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.