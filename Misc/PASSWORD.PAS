program access (input,output);

uses
  crt;

var
  pass,
  user:string;

begin
  clrscr;
    repeat
      ClrScr;
      textcolor(magenta);
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      Writeln;
      write ('                     Please enter your name: ');
      Textcolor (White);
      readln (user);
    until user = 'tka' or User = 'TKA' or user = 'Tka' or user = 'TKa'or user = 'tKa' or user = 'tKA' or user = 'TkA' or user = 'tkA';
      textcolor(lightblue);
      writeln;
      writeln ('Hello TkA!');
    repeat
      textcolor(lightred);
      writeLn;
      write ('Please enter your password. : ');
      textcolor(black);
      readln (pass);
      textcolor(lightred);
    until pass = 'star wars';
  textcolor(lightgreen);
  writeln;
  writeln ('Access granted.');
  Textcolor (27);
  WriteLn;
  WriteLn;
  writeln ('Press any key to continue...');
  readKey;
end.

