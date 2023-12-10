PROGRAM NSPower (INPUT,OUTPUT);
     {This program accepts the numbere of KWH used by a person, and
     returns the final bill for the KWH used.}

USES
  CRT;
CONST
  Low = 0.023;
  Medium = 0.043;
  High = 0.064;
  Taxes = 0.12;
VAR
  KWH : Integer;

Begin
  TextColor (0);
  ClrScr;
  Repeat
    Begin
      TextColor (LightGreen);
      Write ('Enter the number of KWH used: ');
      TextColor (White);
      ReadLn (KWH);
      WriteLn;
      If KWH >= 500
        Then
          Begin
            TextColor (LightBlue);
            WriteLn ('Your bill comes to = $', KWH * HIGH:0:2);
            WriteLn ('Tax =                $', KWH * HIGH * Taxes:0:2);
            WriteLn ('Your final bill is = $',
                    (KWH * HIGH)+(KWH * HIGH * Taxes):0:2);
            WriteLn;
          End
        Else IF KWH >= 250
               Then
                 Begin
                   TextColor (LightBlue);
                   WriteLn ('Your bill comes to = $', KWH * Medium:0:2);
                   WriteLn ('Tax =                $', KWH * Medium * Taxes:0:2);
                   WriteLn ('Your final bill is = $',
                           (KWH * Medium)+(KWH * Medium * Taxes):0:2);
                   WriteLn;
                 End
               Else If (KWH < 250) and (KWH >= 0)
                      Then
                        Begin
                          TextColor (LightBlue);
                          WriteLn ('Your bill comes to = $', KWH * low:0:2);
                          WriteLn ('Tax =                $', KWH * low * Taxes:0:2);
                          WriteLn ('Your final bill is = $',
                                  (KWH * low)+(KWH * low * Taxes):0:2);
                          WriteLn;
                        End
                      Else If KWH = -1
                             Then WriteLn ('Program terminated.')
    End;
  Until KWH = -1;
  WriteLn;
  WriteLn;
  TextColor (27);
  WriteLn ('Press any key to continue...');
  ReadKey;
End.