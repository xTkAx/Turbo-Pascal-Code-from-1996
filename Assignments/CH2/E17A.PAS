program computertime ( input , output ) ;
     { a program to calculate the time for the computer to work}

uses crt;
const
  setup=37;
var
  systems:integer;

begin
  clrscr;
  Textcolor (lightred);
  write( 'How many systems ? ' );
  Textcolor (white);
  readln( systems);
  Textcolor (lightblue);
  WriteLn;
  writeln('Setup time will be '  ,  systems*setup ,  ' minutes.');
  textcolor (27);
  Writeln;
  Writeln;
  write ('Press any key to continue..');
  readkey;
end.