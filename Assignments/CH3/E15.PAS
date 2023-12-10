 Program MultiplicationTable (Input, Output);
 {This program calculates the number of years it takes for 5000
 dolars to be earned}
 Uses
   CRT;
 Var
   years:integer;
   interest, CD:Real;
 begin
   TextColor (LightGreen);
   clrscr;
   years:=0;
   CD:=2500.00;
   Repeat
     begin
       years:=years+1;
       interest:=Cd*0.075;
       CD:=CD + interest;
     end;
   Until CD >= 5000;
   Writeln ('It will take ',years,' years to earn 5000 dollars.');
   WriteLn;
   TextColor (27);
   Writeln;
   Writeln ('Press any key to continue...');
   ReadKey;
 end.