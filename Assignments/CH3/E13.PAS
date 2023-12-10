PROGRAM  BoredAuto (Input,Output);
     {This program asls for the model of your car, manufactured by the Bored
     Auto company, and it will tell you if your car has a defect or not.
     some models do not have round wheels, and they need to be fixed.}

USES
  CRT;
VAR
  Model: Integer;

Begin
  TextColor (0);
  ClrScr;
  Textcolor (LightBlue);
  WriteLn ('The Bored Auto Company Model Check');
  Model := 1;
  While Model <> 0 do
    Begin
      WriteLn;
      TextColor (LightGreen);
      Write ('Enter your model number: ');
      Textcolor (White);
      ReadLn (model);
      TextColor (LightGreen);
      If (Model = 119) or (Model = 179) or (Model = 221) or (Model = 780) or
         ((model >= 189) and (model <= 195))
         Then WriteLn ('Your car is defective.  Please have it fixed.')
         Else If Model <> 0
         Then WriteLn ('Your car is O.K.');
    end;
  WriteLn;
  WriteLn;
  TextColor (27);
  Write ('Press any key to continue..');
  ReadKey;
End.