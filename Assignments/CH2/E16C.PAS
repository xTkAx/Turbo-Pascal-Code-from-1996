Program Digits (Input,Output);
  {This will break up a 3 digit number, 1st, 2nd and 3rd number, and
  give the sum of the three digits.}

uses
  crt;
var
  num:integer;

begin
  clrscr;
  textcolor (lightred);
  write ('Enter a three digit number : ');
  Textcolor (white);
  readln (num);
  Writeln;
  Textcolor (lightgreen);
  writeln ('The first number is ',num div 100,'.');
  writeln ('The second number is ',(num mod 100) div 10,'.');
  writeln ('The third number is ',num mod 10,'.');
  Write ('The sum of the three numbers is: ');
  Writeln ((num div 100)+((num mod 100)div 10)+(num mod 10));
  writeln;
  Textcolor (35);
  writeln ('Press any key to continue.');
  readkey;
end.
