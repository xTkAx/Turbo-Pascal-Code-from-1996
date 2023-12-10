Program PayTax (Input,Output);
        {This will show a player how much they pay and take home}

uses
  Crt;
Var
  earn:real;
Const
  tax=0.44;

Begin
  ClrScr;
  Textcolor (lightRed);
  Write ('What is the professional player''s earnings? ');
  TextColor (white);
  ReadLn (earn);
  TextColor (LightGreen);
  WriteLn;
  WriteLn ('The player keeps $',earn - (earn*tax):1:2);
  WriteLn ('The player pays $',earn*tax:1:2);
  WriteLn;
  WriteLn;
  Textcolor (27);
  WriteLn ('Press any key to continue...');
  ReadKey;
End.
