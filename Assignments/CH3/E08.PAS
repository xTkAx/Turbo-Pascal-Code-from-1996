PROGRAM CoD (Input,Output);
       {This program calculates the yearly interest and final value of
       the CD, given the initial investment and the 5 interest rates.}

USES
  CRT;
VAR
  Invest, rate : Real;
  Counter, Sum: Integer;

Begin
  ClrScr;
  TextColor (lightgreen);
  Write ('Enter initial investment:  ');
  TextColor (white);
  ReadLn (Invest);
  TextColor (lightgreen);
  For counter := 1 to 5 do
    Begin
      WriteLn;
      Textcolor (LightGreen);
      Write ('Enter rate for year ', counter,' (decimal): ');
      TextColor (White);
      ReadLn (rate);
      TextColor (LightGreen);
      Writeln ('You earned $',Invest * rate:0:2);
      Invest := (Invest * rate)+ Invest;

    End;
  WriteLn;
  WriteLn;
  TextColor (LightBlue);
  WriteLn ('Your CD is worth $', invest:0:2);
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue...');
  readkey;
end.
