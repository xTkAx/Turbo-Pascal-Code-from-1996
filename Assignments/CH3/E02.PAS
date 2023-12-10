PROGRAM CluckEggs (Input, Output);
     {This program will allow you to input the number of eggs that you
      want, and the program will calculate the bill.}

USES
  CRT;
CONST
 three = 0.50;
 five = 0.45;
 ten = 0.40;
 eleven = 0.35;
VAR
  eggs, height, length, width: integer;

Begin
  TextColor (0);
  Clrscr;
  TextColor (LightGreen);
  Write ('How many eggs would you like to purchase? ');
  TextColor (White);
  ReadLn (eggs);
  WriteLn;
  WriteLn;
  TextColor (lightBlue);
  If (eggs div 12) <= 3
    Then Begin
           WriteLn ('Purchase: ', eggs div 12, ' dozen, and '
                    , Eggs MOD 12, ' extra eggs.');
           WriteLn ('Your bill comes to $', eggs * (three * (1/12)):0:2);
         end
    Else If (eggs div 12) <= 5
           Then Begin
                  WriteLn ('Purchase: ', eggs div 12, ' dozen, and '
                    , Eggs MOD 12, ' extra eggs.');
                  WriteLn ('Your bill comes to $',eggs * (five * (1/12)):0:2);
                end
           Else If (eggs div 12) <= 10
                  Then Begin
                         WriteLn ('Purchase: ', eggs div 12, ' dozen, and '
                                 , Eggs MOD 12, ' extra eggs.');
                         WriteLn ('Your bill comes to $', eggs  * (ten * (1/12)):0:2);
                       end
                  Else If (eggs div 12) >= 11
                         Then Begin
                                WriteLn ('Purchase: ', eggs div 12, ' dozen, and '
                                        , Eggs MOD 12, ' extra eggs.');
                                WriteLn ('Your bill comes to $', eggs * (eleven * (1/12)):0:2)
                              end;
  TextColor (27);
  WriteLn;
  WriteLn;
  WriteLn ('Press any key to continue..');
  ReadKey;
End.