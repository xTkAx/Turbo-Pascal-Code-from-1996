Program  Installation (Inupt,Output);

Uses
  CRT;
Var
  Dir:string[8];
  ans,drive:char;


Begin
  Repeat
    Begin
      ClrScr;
      TextColor (YELLOW);
      Write ('          Which disk drive do you want to install to? ');
      TextColor (White);
      ReadLn (Drive);
      {limited to one character}
      TextColor (YELLOW);
      Write ('          Which directory do you want to install to? ');
      TextColor (White);
      ReadLn (dir);
      {limited to 8 characters}
      {need an if exist statement here to see if the drive and directory
      exist.  if the drive doesn't exist then it will ask you to select
      drive until a valid one is selected.  The dir name has to be limited to
      8 characters, if there is any more than 8, it asks for the directory
      again.  If the directory already exists, it tells you thet it exists,
      and asks you if you want to over write, or delete the dir.}
      TextColor (LightRed);
      WriteLn;
      WriteLn;
      Write ('          About to install to ',Drive, ':\',dir,'.  Proceed [Y/N]? ');
      TextColor (White);
      ReadLn (ans);
      {limited to one character}
    end;
  Until (ans='y') or (ans='Y');
  TextColor (0);
  ClrScr;
  TextColor (26);
  WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  WriteLn ('INSTALLING':44);
  WriteLn ('PLEASE STAND BY':47);
  Readkey;
End.