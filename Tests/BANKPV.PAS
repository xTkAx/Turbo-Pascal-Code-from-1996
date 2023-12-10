Program BankPv (Output);
     {A program that finds out when the algonquin indian nation
      would have made 20 billion dollars if they invested the
      money they made from the $24 sale of the manhattan island
      in 1626 where they would have made 9% coumpound interest
      annually, to see if they got a good deal or not, since
      the manhattan island is now worth 20 billion dollars.}

Uses
  CRT;
Const
  BI = 20000000000.0;
  AI = 0.09;
Var
  Year: Integer;
  Money: Real;

Begin
  ClrScr;
  Year := 1626;
  Money := 24.0;
  Textcolor (lightGreen);
  Repeat
    Begin
      Year := Year + 1;
      Money := Money + (Money *AI)
    End
  until Money >= Bi;
  WriteLn ('If they invested $24 in 1626 with a compound interest of 9%,');
  WriteLn ('the Algonquin Indian nation would have made $',money:2:2);
  WriteLn ('by the year ',year,'. It would have taken them only ', year - 1626,' years.');
  WriteLn ;
  WriteLn ;
  TextColor (27);
  Write ('Press any key to continue..');
  ReadKey;
  End.

