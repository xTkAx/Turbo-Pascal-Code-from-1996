PROGRAM Rectangle (Input,Output);
    {This program will accept the values of the rectangle and will return
    the volume, peremeter, and volume.}

USES
  CRT;
VAR
  W,
  L,
  H:Real;

Begin
  Textcolor (0);
  ClrScr;
  TextColor (LightBlue);
  Write ('The length is: ');
  TextColor (White);
  ReadLn (L);
  TextColor (LightBlue);
  Write ('The width is: ');
  TextColor (White);
  ReadLn (W);
  TextColor (LightBlue);
  Write ('The height is: ');
  TextColor (White);
  ReadLn (H);
  WriteLn;
  WriteLn;
  TextColor (lightGreen);
  WriteLn ('The area is: ',((L * W)+(L * H)+(H * W)) * 2 :0:2);
  WriteLn ('The volume is: ',L * W * H :0:2);
  WriteLn ('The perimeter is: ', L + L + W + W :0:2);
  WriteLn;
  TextColor (27);
  WriteLn ('Press any key to continue..');
  ReadKey;

End.