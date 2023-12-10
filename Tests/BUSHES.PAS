Program WheatHarvest (Input, Output);
     {A program to predict the seasonal wheat harvest for a
      300 acre feild based on average rainfall entered by
      the user.}


Uses
  CRT;

Var
  Letter :char;
  Size:Integer;
  AveR,
  Bushes:Real;

Const
  Produce = 8.4;


Begin
  ClrScr;
  TextColor (LightGreen);
  Write ('Enter the average rainfall in inches: ');
  TextColor (white);
  ReadLn (AveR);
  TextColor (LightGreen);
  Write ('Is the Field 300 acres (Y/N)? ');
  TextColor (white);
  ReadLn (letter);
  if letter ='y'
    Then
      size := 300
     Else
       Begin
         TextColor (lightGreen);
         Write ('Enter the size of the field in acres: ');
         TextColor (white);
         ReadLn (size)
       End;
  WriteLn;
  Textcolor (Yellow);
  If AveR > 21
    Then Begin
           AveR := (AveR - 21)*0.05;
           Bushes :=(Produce-(AveR*Produce))* size;
         End
    Else if Aver < 21
           Then
             Begin
               AveR := ((21-AveR)*0.05);
               Bushes := (produce-(AveR*Produce))* size;
             End
           Else
             Bushes:= (size * produce);
  WriteLn ('There will be ', bushes:2:2,' bushes produced.');
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue...');
  ReadKey;
End.


