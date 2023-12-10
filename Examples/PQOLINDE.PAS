Program PQLIndex (Input, Output);
     {A program that finds the physical quality of life
     index for a country, given the % of the population
     that is illerate, the Infant Mortality rate, and
     the Life Expectancy by the user.}

Uses
  CRT;
Var
  Letter : Char;
  AL, IM, LE : Integer;

Begin
  Repeat
    Begin
    ClrScr;
    TextColor (LightGreen);
    Write ('The Adult Illiteracy (% of total pop.) is: ');
    TextColor (White);
    ReadLn (AL);
    TextColor (LightGreen);
    Write ('The Infant Mortality rate (per 1000 live births) is: ');
    TextColor (White);
    ReadLn (IM);
    TextColor (LightGreen);
    Write ('The Life Expctancy (at birth) is: ');
    TextColor (White);
    ReadLn (LE);
    TextColor (LightBlue);
    WriteLn ;
    Write ('The Physical Quality of Life Index for this country is: ');
    TextColor (Yellow);
    WriteLn (((100-AL)+((166-IM)*0.625)+((LE-42)*2.7))/3:2:2);
    TextColor (LightRed);
    WriteLn;
    Write ('Another? (Y/N): ');
    TextColor (White);
    ReadLn (Letter);
    End
  Until (Letter = 'n') or (Letter = 'N');
  TextColor (red);
  WriteLn ;
  WriteLn ('-----This program was written by TkA in 1995----':60);
  WriteLn;
  WriteLn ;
  TextColor (27);
  Write ('Press any key to continue..');
  ReadKey;
  End.

