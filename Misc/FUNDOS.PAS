PROGRAM FakeDos (output, Input);

USES
  CRT;
VAR
  Input: Char;
  A: Real;

Begin
Randomize;
TextColor (LightGray);
ClrScr;
Repeat
  Begin
    Textcolor (lightGray);
    Write ('C:\>');
    ReadLn (Input);
    If Input <> 'Q'
     Then
      a := random(20+1);
       if a=0 then writeln('Are you talkin'' to me??');
       if a=1 then writeln('I forget how to do that!');
       if a=2 then writeln('@#%*@*#@*');
       if a=3 then writeln('Go to HELL!!!!');
       if a=4 then writeln('I hope you washed your hands before you used me!!!');
       if a=5 then writeln('As if!!');
       if a=6 then writeLn('Heheh, that tickles!');
       if a=7 then writeln('Naaaaaaahh. ');
       if a=8 then writeln('That''s a Niiiiice disk!');
       if a=9 then writeln('Blow my CPU first!');
       if a=10 then writeln('I will do it later.');
       if a=11 then writeln('You do it.');
       if a=12 then writeln('Stop doing that!');
       if a=13 then writeln('Yes my master.. NOT!');
       if a=14 then writeln('I hope you washed your hands before you used me!!!');
       if a=15 then writeln('AS IF!!');
       if a=16 then writeln('YOU BITE THE BIG ONE!');
       if a=17 then writeln('NAAAAAAAAAAAAAA ');
       if a=18 then writeln('Insert you floppy into my disk drive...');
       if a=19 then writeln('BLow My CpU first!!!!!!!');
       if a=20 then writeln('I will do it later.');
      WriteLn;
     end
Until Input = 'Q';
WriteLn ('Continuing to process start up files');
Delay (1500);
end.