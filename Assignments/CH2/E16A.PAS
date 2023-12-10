Program Digits (Input,Output);
  {This will break up a 2 digit number, 1st and 2nd number.}

uses
  crt;
var
  num:integer;

begin
  clrscr;
  textcolor (lightred);
  write ('Enter a two digit number : ');
  Textcolor (white);
  readln (num);
  Writeln;
  Textcolor (lightgreen);
  writeln ('The first number is ',num div 10,'.');
  writeln ('The second number is ',num mod 10,'.');
  writeln;
  Textcolor (35);
  writeln ('Press any key to continue.');
  readkey;
end.
