program alive (input,output);
{this will give the time alive and asleep}

uses
  crt;

var
  m1,m2,
  d1,d2,
  y1,y2,
  life:real;

const
  mo=30;
  ye=365;
  ho=8;
begin
  clrscr;
  textcolor (lightgreen);
  writeln ('Enter your birthdate in numerical format.');
  WriteLn;
  Textcolor (lightred);
  write ('Month : ');
  Textcolor (White);
  readln (m1);Textcolor (lightred);
  write ('  Day : ');
  Textcolor (White);
  readln (d1);
  Textcolor (lightred);
  write (' Year : ');
  Textcolor (White);
  readln (y1);
  writeln;
  textcolor (lightblue);
  writeln ('Now enter today''s date.');
  writeln;
  Textcolor (lightred);
  write ('Month : ');
  Textcolor (White);
  readln (m2);
  Textcolor (lightred);
  write ('  Day : ');
  Textcolor (White);
  readln (d2);
  Textcolor (lightred);
  write (' Year : ');
  Textcolor (White);
  readln (y2);
  Textcolor (lightred);
  writeln;
  life :=(((y2*ye)+(m2-1)*mo)+d2)-(((y1*ye)+(m1-1)*mo)+d1);
  Textcolor (lightgreen);
  writeln ('You have been alive for ',life:1:2,' days.');
  writeln ('You have slept ',life*ho:1:2,' hours.');
  Textcolor (27);
  writeln;
  write ('Press any key to continue');
  readkey;
end.
