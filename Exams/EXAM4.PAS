PROGRAM Recardos (Input, Output);
     {This program will ask you what sice of pizza you want, and how many
     toppings, and will calculate the final cost.}

USES
  CRT;
CONST
  Nine = 5.5;
  NTop = 0.60;
  Twelve = 7.0;
  TTop = 0.75;
  Fourteen = 9.0;
  FTop = 1.0;
VAR
  Size, Top: Integer;

Begin
  TextColor (0);
  ClrScr;
  Repeat
    Begin
      TextColor (LightGreen);
      WriteLn ('What size pizza do you want?');
      Write ('The choices are 9, 12, or 14 inches: ');
      TextColor (White);
      ReadLn (Size);
      WriteLn;
    End;
  Until (Size = 12) or (Size = 9) or (Size = 14);
  TextColor (LightGreen);
  Write ('How many toppings would you like? ');
  TextColor (White);
  ReadLn (Top);
  WriteLn;
  WriteLn;
  TextColor (LightBlue);
  Write ('Basic Cost: $');
  If Size = 9
    Then
      Begin
        WriteLn (Nine:0:2);
        Write ('Toppings: $');
        WriteLn (Top * NTop:0:2);
        WriteLn;
        TextColor (LightRed);
        Write ('Total Cost: $');
        WriteLn (Nine + Top * NTop:0:2);
      End;
  If Size = 12
    Then
      Begin
        WriteLn (Twelve:0:2);
        Write ('Toppings: $');
        WriteLn (Top * TTop:0:2);
        WriteLn;
        TextColor (LightRed);
        Write ('Total Cost: $');
        WriteLn (Twelve + Top * TTop:0:2);
      End;
  If Size = 14
    Then
      Begin
        WriteLn (Fourteen:0:2);
        Write ('Toppings: $');
        WriteLn (Top * FTop:0:2);
        WriteLn;
        TextColor (LightRed);
        Write ('Total Cost: $');
        WriteLn (Fourteen + Top * FTop:0:2);
      End;
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue...');
  ReadKey;
  End.