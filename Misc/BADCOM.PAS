program badcommand(output);

uses crt;

begin;
clrscr;
repeat;
randomize;
begin
textcolor(lightgray);
write ('C:\>');
readln;
writeln ('Bad Command or file Name');

end;
until 1>2;
end.