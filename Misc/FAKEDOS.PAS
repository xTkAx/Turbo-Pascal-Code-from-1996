PROGRAM FakeDos (output, Input);

USES
  CRT;
VAR
  INPUT: char;

Begin
TextColor (LightGray);
ClrScr;
Repeat
  Begin
    Textcolor (lightGray);
    Write ('C:\>');
    ReadLn (input);
    If (Input <> 'Q')
    Then WriteLn ('Bad command or file name');
    WriteLn;
  end
Until Input = 'Q';
WriteLn ('Continuing to process start up files');
Delay (1500);
end.