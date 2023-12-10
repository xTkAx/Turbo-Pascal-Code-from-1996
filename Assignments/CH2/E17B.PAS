program computertime ( input , output ) ;
     { a program to calculate the time for the computer to work}

uses crt;
const
  setup=37;
  hour=60;
var
  systems:integer;

begin
  clrscr;
  textcolor (lightred);
  write( 'How many systems ? ' );
  Textcolor (white);
  readln( systems);
  WriteLn;
  textcolor (lightblue);
  writeln( 'setup time will be '  ,  systems*setup div hour ,
            ' hours and ' ,  systems * setup mod hour  , ' minutes');
  WriteLn;
  WriteLn;
  Textcolor (27);
  writeln ( 'Press any key to continue..');
  readln;
end.