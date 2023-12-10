Program PisOfTheTri (Input,Output);
  { Plays a hunt type of game.}

  {***********************************************************************
   ***********************************************************************
   **                                                                   **
   **     This is the first real game produced by TkA, it is            **
   **     called Prisoners of the Triangle.                             **
   **     Press Ctrl+F9 to play, and Ctrl+break to exit at any time.    **
   **     The program is also in EXE format named POTT.EXE which is     ** 
   **     executable from DOS.                                          **
   **     Have fun.                                                     **
   **                                                                   **
   **     P.S. I would like to hear your comments, good or bad, so      **
   **          if you have any please send them to the adderss at       **
   **          the end of the program.                                  **
   **                                                                   **
   **                                        Copyright Feb. 15th, 1996  **
   ***********************************************************************
   ***********************************************************************}

Uses
  CRT, Graph3, Graph;
                                 {All the program varibles and stuff.}

Var
  Ypos, epos, sond, namchoice, target, R, level, M, I, life, device,
  mode, hard, try, one: Integer;
  Choice: char;
  Nam, you, liv, lev: String;

{--------------------------------------------------------------------------}

Procedure Credits;             {Starting credits.}

Var device, mode:  Integer;

Begin
  clrscr;
  detectgraph (device, mode);
  initgraph (device, mode, 'C:\progra~1\TP7\bgi');
  settextstyle (gothicfont, horizdir, 8);
  textcolor(black);
  Setcolor (lightblue);
  outtextxy (getmaxx - 535, 150,'TkA');
  Delay (3000);
  Setcolor (lightgreen);
  outtextxy (getmaxx - 460, 230,'Presents');
  Delay (3500);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 500, 150,'A Program By');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'TkA');
  Delay (3000);
  clrscr;
  Delay (2000);
  setfillstyle(widedotfill,5);
  floodfill (3,3,3);
  setcolor (red);
  settextstyle (triplexfont, horizdir,8 );
  outtextxy (getmaxx - 520, 75,'PRISONERS');
  setcolor (white);
  settextstyle (triplexfont, horizdir, 3);
  outtextxy (getmaxx - 360, 200,'OF THE');
  setcolor (blue);
  settextstyle (triplexfont, horizdir, 8);
  outtextxy (getmaxx - 500, 250,'TRIANGLE');
  textcolor (black);
  delay (5500);
  setfillstyle(widedotfill,black);
  floodfill (3,3,3);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (White);
  outtextxy (getmaxx - 450, 150,'Written By');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'TkA');
  Delay (3000);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 455, 150,'Directed By');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'TkA');
  Delay (3000);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 575, 150,'Sounds Composed By');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'TkA');
  Delay (3000);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 510, 150,'Original Concept');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'TkA');
  Delay (3000);
  clrscr;
  Delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 550, 150,'Special Thanks To');
  Delay (2000);
  setcolor (lightblue);
  outtextxy (getmaxx - 470, 230,'Scott Logan');
  delay (3000);
  clrscr;
  delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (lightblue);
  outtextxy (getmaxx - 550, 185,'Jeremy MacEachern');
  Delay (3000);
  clrscr;
  delay (1000);
  settextstyle (gothicfont, horizdir, 6);
  textcolor(black);
  setcolor (white);
  outtextxy (getmaxx - 400, 185,'and');
  Delay (1000);
  clrscr;
  delay (1000);
  setcolor (lightblue);
  outtextxy (getmaxx - 500, 185,'Netchaev Ivan');
  delay (3000);
  closegraph
End;                  {End of starting credits}

{----------------------------------------------------------------------------}
 procedure story;               {start of story}

 begin
   delay (2000);
   nosound;textcolor (0);
   writeln ('  ');
   Clrscr;
   textcolor (lightblue);
   writeLn;writeLn;writeLn;writeLn;writeLn;WriteLn;WriteLn;writeLn;writeLn;writeLn;
   Write ('     Spectrum''s Special Forces pilot,');
   delay (4000);
   write (' Captian Black,');
   Delay (3000);
   WriteLn (' was orderd to test the');
   write ('top secret Spectrum - 3FA cloaked stealth,');
   delay (6000);
   write (' in a low altitude weapons test       simulation.');
   delay (5000);
   Write ('  When');
   delay (1000);
   write ('.');
   delay (500);
   write ('.');
   delay (500);
   write ('.');
   Delay (1000);
   textcolor (0);
   writeLn('  ');
   clrscr;
   writeLn;writeLn;WriteLn;WriteLn;writeLn;writeLn;writeLn;writeLn;writeLn;writeLn;
   Sound (1100);textcolor (lightred);
   write ('----- ');
   textcolor (7);
   write('Spectrum base?');
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   Write ('  This is');
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;

   delay (50);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);

   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   write (' Captian Black.  ');delay (75);
   nosound;
   delay (50);Sound (1100);

   delay (75);
   nosound;
   delay (800);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);

   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   write ('There....');delay (100);Sound (1100);
   delay (200);
   nosound;

   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (800);
   Sound (1100);

   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   Writeln (' there seems to be some ');
   write ('sort of ');
   nosound;
   delay (50);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   Write ('computer guidance malfunction.  ');delay (800);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   write ('Please verify, ');delay (80);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (800);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   delay (50);
   Sound (1100);
   delay (75);
   nosound;
   Write ('my last known coordinateswere ');delay (100);Sound (1100);
   delay (200);
   nosound;
   delay (50);Sound (1100);
   delay (200);
   nosound;
   delay (100);Sound (1100);
   Write ('50 miles East of Miami.');delay (200);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (50);Sound (1100);
   delay (75);
   nosound;
   Write ('  What the?........AAAAAAAAHHHHHHHH!!!!');textcolor (lightred);write(' -----');
   delay (50);Sound (1100);
   delay (75);
   nosound;
   delay (9000);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   Delay (2000);
   textcolor (White);
   write ('     "At exactly 12:56 A.M. EST this morning,');
   delay (5000);
   writeln (' over a deserted part of the');
   write ('Atlantic Ocean,');
   delay (4500);
   Write (' one of our top secret aircraft,');
   delay (3000);
   write (' and pilot,');
   delay (2000);
   writeln (' disappeared.');
   Delay (4000);
   write ('I''m afraid your friend,');
   delay (3000);
   write (' Captian Black,');
   delay (1000);
   write (' has been lost."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Delay (5000);
   Write   ('     "Colonel White, ');
   delay (2000);
   Write ('I must be allowed to take an aircraft out to investigate ');
   Write ('  the last known position for clues to his disappearence."');
   Delay (10000);
   WriteLn;WriteLn;WriteLn;textcolor (white);
   Write ('     "As a matter of fact, ');
   delay (3000);
   write ('that is your next assignment, ');
   Delay (1500);
   writeLn ('Captian Scarlett.');
   delay (2000);
   Write ('Leave ');
   delay (900);
   write ('A ');
   delay (100);
   write ('S ');
   delay (500);
   write ('A ');
   delay (100);
   write ('P."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Delay (3000);
   Write   ('     "What are the coordinates of their disapperaence, ');
   delay (3000);
   write ('Colonel?"');
   Delay (2000);
   WriteLn;WriteLn;WriteLn;textcolor (white);
   Write ('     "It''s in, ');
   delay (3000);
   WriteLn ('the Bermuda Triangle."');
   delay (3000);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   textcolor ( lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Writeln ('     Captian Scarlett heads to the Bermuda Triangle, to search for clues.');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   sound (70);
   textcolor (White);
   writeln ('     "At exactly 12:56 A.M. EST this morning, over a deserted part of the');
   writeln ('Atlantic Ocean, one of our top secret aircraft, and pilot, disappeared.');
   writeln ('I''m afraid your friend, Captian Black has been lost."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "Colonel White, ');
   Write ('I must be allowed to take an aircraft out to investigate ');
   Write ('  the last known position for clues to his disappearence."');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   WriteLn ('     "As a matter of fact, that is your next assignment, Captian Scarlett.');
   WriteLn ('Leave A S A P."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "What are the coordinates of their disapperaence, Colonel?"');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   Write ('     "It''s in, ');
   WriteLn ('the Bermuda Triangle."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   textcolor ( lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Writeln ('     Captian Scarlett heads to the Bermuda Triangle, to search for clues.');
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   sound (70);
   textcolor (White);
   writeln ('     "At exactly 12:56 A.M. EST this morning, over a deserted part of the');
   writeln ('Atlantic Ocean, one of our top secret aircraft, and pilot, disappeared.');
   writeln ('I''m afraid your friend, Captian Black has been lost."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "Colonel White, ');
   Write ('I must be allowed to take an aircraft out to investigate ');
   Write ('  the last known position for clues to his disappearence."');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   WriteLn ('     "As a matter of fact, that is your next assignment, Captian Scarlett.');
   WriteLn ('Leave A S A P."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "What are the coordinates of their disapperaence, Colonel?"');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   Write ('     "It''s in, ');
   WriteLn ('the Bermuda Triangle."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   textcolor ( lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Writeln ('     Captian Scarlett heads to the Bermuda Triangle, to search for clues.');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   sound (70);
   textcolor (White);
   writeln ('     "At exactly 12:56 A.M. EST this morning, over a deserted part of the');
   writeln ('Atlantic Ocean, one of our top secret aircraft, and pilot, disappeared.');
   writeln ('I''m afraid your friend, Captian Black has been lost."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "Colonel White, ');
   Write ('I must be allowed to take an aircraft out to investigate ');
   Write ('  the last known position for clues to his disappearence."');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   WriteLn ('     "As a matter of fact, that is your next assignment, Captian Scarlett.');
   Write ('Leave A S A P."');
   WriteLn;
   WriteLn;
   WriteLn;
   textcolor (Red);
   Write   ('     "What are the coordinates of their disapperaence, Colonel?"');
   WriteLn;WriteLn;WriteLn;textcolor (white);
   Write ('     "It''s in, ');
   WriteLn ('the Bermuda Triangle."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   textcolor ( lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Writeln ('     Captian Scarlett heads to the Bermuda Triangle, to search for clues.');
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (6000);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   delay (1000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (lightblue);
   Write ('     But without warning,');
   delay (2000);
   write (' a brilliant flash of light blinds him,');
   delay (3000);
   write (' knocking him     unconcious.');
   Delay (5000);
   textcolor (0);
   Write(' ');
   clrscr;
   delay (5000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (lightblue);
   Write ('     When he awakes,');
   Delay (3000);
   Write (' he finds himself in a room,');
   delay (4000);
   write (' with no doors,');
   delay (2000);
   Writeln (' no ceiling,');
   delay (2000);
   WriteLn (' and a Missile Launcher in the corner.');
   delay (5000);
   textcolor (0);
   Write(' ');
   clrscr;
   delay (2000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (7);
   Write ('     "This is the voice of the Mystieron,');
   delay (4000);
   write(' welcome to our game, ');
   delay (3000);
   writeln ('Captian');
   Write ('Scarlett.');
   delay (4000);
   Write ('  Here you are the hunter,');
   delay (3000);
   write (' and the hunted,');
   delay (2000);
   write (' by the other victims,');
   delay (3000);
   Writeln (' of');
   write ('our Bermuda Triangle trap."');
   delay (3000);
   textcolor (0);
   write (' ');
   clrscr;
   delay (2000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (Red);
   Write   ('     "I can''t let you do this!"');
   delay (4000);
   textcolor (0);
   Write(' ');
   clrscr;
   delay (2000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (7);
   Write ('     "Your only way out,');
   delay (2000);
   write (' is to survive ten deadly rounds of our game.  ');
   Delay (5000);
   Writeln('But ');
   write ('remember,');
   delay (2000);
   write(' Captian Scarlett, ');
   delay (4000);
   Write ('here you are not invincible."');
   delay (5000);
   textcolor (0);
   write (' ');
   clrscr;
   delay (2000);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   textcolor (Red);
   Write   ('     "You will pay for this."');
   delay (5000);
   textcolor (0);
   write (' ');
   clrscr;
   delay (2000);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Write ('                        And here,');
   delay (1000);
   write (' the game begins.....');
   delay (4000);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   write (' ');
   clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   WriteLn ('                        And here, the game begins.....');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   WriteLn ('                        And here, the game begins.....');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
   Write ('                        And here, the game begins.....');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (1000);
   textcolor (0);
   WriteLn('  ');
   clrscr;
   end;
                                                {end of story}
{----------------------------------------------------------------------------}
Procedure help;               {start of help}
begin
textcolor (0);
write (' ');
Clrscr;
delay (2000);
textcolor (white);
WriteLn ('                                 How To Play');
textcolor (RED);
Write('                          PRISONERS');
textcolor (white);
write (' of the ');
Textcolor (Blue);
Writeln ('TRIANGLE');
textcolor (lightgreen);
writeln;
writeln;
writeln;
write ('     You take on the role of the captured Captian Scarlett, locked in a room    with no doors, no ceiling,');
write(' and a Missile ');
writeln ('Launcher, trying to fight your way     through ten levels to reach the Mystieron agent holding you captive.');
writeln ;
write ('     At the main menu, type ');
textcolor (lightred);
write ('G ');
textcolor (lightgreen);
writeln('to enter the game.');
writeLn;
Write ('     Once you are in the game screen you will see that the bottom of the screen contains the ');
write ('current information for, your level, ');
write('the number of lives you have  left, your position on the map (which is also marked on the map in ');
textcolor (lightblue);
write ('lightblue');
textcolor (lightgreen);
write('),  and the ');
write('destination ');
write ('point');
writeln(' of your next missile.' );
writeln;
write ('     When it''s your turn, type the number for the room ');
write ('that you want to destroy and push ');
textcolor (lightred);
write ('Enter');
textcolor (lightgreen);
write ('.  Your missile will blast off, homing in on the target room that you chose, destroying it, stating if you ');
write ('destroyed ');
Write ('someone or not, and          highlighting the room ');
textcolor (red);
write ('red ');
textcolor (lightgreen);
write ('for a few seconds marking it''s destruction.  REMEMBER THIS ROOM! because it will vanish after a few seconds.');
write ('  After your turn, ');
writeln ('it is  the others'' chance to destroy you.');
Writeln;
textcolor (25);
write ('     Press any key to continue..');
readkey;
textcolor (0);
writeLn(' ');
clrscr;
delay (1000);
textcolor (lightgreen);
WriteLn; WriteLn;WriteLn;WriteLn;WriteLn;
write ('     In the first level, the opposition can only shoot ');
textcolor (lightred);
write('one ');
textcolor (lightgreen);
write ('missile at a time.   After you defeat a level, you are placed in ');
write ('the next level.  In levels two to   four, the opposition shoots ');
textcolor (lightred);
write ('two ');
textcolor (lightgreen);
write ('missiles at a time.  In levels six to nine, yourenemy shoots');
textcolor (lightred);
write (' three ');
textcolor (lightgreen);
write ('missles at a time.  In the last level, level ten, the enemy  shoots');
textcolor (lightred);
write (' four ');
textcolor (lightgreen);
writeln ('missiles at a time.');
writeln;
writeln ('     You start the game with 5 lives.  Once they are all used up, you are dead,');
write ('and you will have to start the game over again.');
write ('  The enemy WILL find you by     their 35''th shot, so remember the rooms that have been targeted ');
writeln ('so you can get  them before they get you.');
writeln;
Writeln ('     Good luck, Captian Scarlett.');
writeln;
textcolor (25);
Writeln ('     Press any key for the menu..');
readkey;
textcolor (0);
write(' ');
delay (0);
nosound;
   clrscr;
   sound (70);
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   write (' ');
   clrscr;
   sound (70);
WriteLn; WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (lightgreen);
write ('     In the first level, the opposition can only shoot ');
textcolor (lightred);
write('one ');
textcolor (lightgreen);
write ('missile at a time.   After you defeat a level, you are placed in ');
write ('the next level.  In levels two to   four, the opposition shoots ');
textcolor (lightred);
write ('two ');
textcolor (lightgreen);
write ('missiles at a time.  In levels six to nine, yourenemy shoots');
textcolor (lightred);
write (' three ');
textcolor (lightgreen);
write ('missles at a time.  In the last level, level ten, the enemy  shoots');
textcolor (lightred);
write (' four ');
textcolor (lightgreen);
writeln ('missiles at a time.');
writeln;
writeln ('     You start the game with 5 lives.  Once they are all used up, you are dead,');
write ('and you will have to start the game over again.');
write ('  The enemy WILL find you by     their 35''th shot, so remember the rooms that have been targeted ');
writeln ('so you can get  them before they get you.');
writeln;
Writeln ('     Good luck, Captian Scarlett.');
writeln;
textcolor (9);
Writeln ('     Press any key for the menu..');
textcolor (0);
write(' ');

   delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightgreen);
WriteLn; WriteLn;WriteLn;WriteLn;WriteLn;
write ('     In the first level, the opposition can only shoot ');
textcolor (lightred);
write('one ');
textcolor (lightgreen);
write ('missile at a time.   After you defeat a level, you are placed in ');
write ('the next level.  In levels two to   four, the opposition shoots ');
textcolor (lightred);
write ('two ');
textcolor (lightgreen);
write ('missiles at a time.  In levels six to nine, yourenemy shoots');
textcolor (lightred);
write (' three ');
textcolor (lightgreen);
write ('missles at a time.  In the last level, level ten, the enemy  shoots');
textcolor (lightred);
write (' four ');
textcolor (lightgreen);
writeln ('missiles at a time.');
writeln;
writeln ('     You start the game with 5 lives.  Once they are all used up, you are dead,');
write ('and you will have to start the game over again.');
write ('  The enemy WILL find you by     their 35''th shot, so remember the rooms that have been targeted ');
writeln ('so you can get  them before they get you.');
writeln;
Writeln ('     Good luck, Captian Scarlett.');
writeln;
textcolor (9);
Writeln ('     Press any key for the menu..');
textcolor (0);
write(' ');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightgreen);
WriteLn; WriteLn;WriteLn;WriteLn;WriteLn;
write ('     In the first level, the opposition can only shoot ');
textcolor (lightred);
write('one ');
textcolor (lightgreen);
write ('missile at a time.   After you defeat a level, you are placed in ');
write ('the next level.  In levels two to   four, the opposition shoots ');
textcolor (lightred);
write ('two ');
textcolor (lightgreen);
write ('missiles at a time.  In levels six to nine, yourenemy shoots');
textcolor (lightred);
write (' three ');
textcolor (lightgreen);
write ('missles at a time.  In the last level, level ten, the enemy  shoots');
textcolor (lightred);
write (' four ');
textcolor (lightgreen);
writeln ('missiles at a time.');
writeln;
writeln ('     You start the game with 5 lives.  Once they are all used up, you are dead,');
write ('and you will have to start the game over again.');
write ('  The enemy WILL find you by     their 35''th shot, so remember the rooms that have been targeted ');
writeln ('so you can get  them before they get you.');
writeln;
Writeln ('     Good luck, Captian Scarlett.');
writeln;
textcolor (9);
Writeln ('     Press any key for the menu..');
textcolor (0);
write(' ');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (2000);

end;                                         {End of help}
{----------------------------------------------------------------------------}
procedure missile;
 begin
sound (1200);
  delay (4);
  sound (1100);
  delay (4);
  sound (1000);
  delay (4);
  sound (900);
  delay (4);
  sound (800);
  delay (4);
  sound (700);
  delay (4);
  sound (600);
  delay (4);
  sound (500);
  delay (4);
  sound (400);
  delay (4);
  sound (300);
  delay (4);
  sound (200);
  delay (4);
  sound (400);
  delay (20);
  sound (200);graphcolormode;
  randomize;
  R := (random (100));
  m:= 0;
  while m < 700 do
    begin
      m:= m + 25;
      clearscreen;
      home;
      setpencolor (2);
      penup;
      forwd (R);
      turnleft (90);
      forwd (375-m);
      pendown;
      turnleft (90);
      forwd (32);
      turnleft (135);
      forwd(13);
      turnright(45);
      forwd (200);
      turnleft (30);
      forwd (14);
      turnleft (120);
      forwd (14);
      turnleft (30);
      forwd(200);
      turnright (45);
      forwd (13);
      penup;
      setpencolor (3);
      home;
      forwd (R);
      turnleft (90);
      forwd (375-m);
      turnleft (90);
      forwd (11);
      pendown;
      turnright (90);
      forwd (8);
      turnleft (170);
      forwd (4);
      turnright (170);
      forwd (10);
      turnleft (160);
      forwd (3);
      turnright (150);
      forwd (13);
      turnleft (150);
      forwd (10);
      turnright (160);
      forwd (3);
      turnleft (170);
      forwd (8);
      turnright (170);
      forwd (4);
      turnleft (180);
      forwd (11);
      turnright (160);
      forwd (4);
      turnleft (160);
      forwd (7);
      penup;
      turnleft (90);
      forwd (2);
      turnleft (90);
      pendown;
      forwd (5);
      turnright (160);
      forwd (2);
      turnleft (150);
      forwd (4);
      turnright (150);
      forwd (4);
      turnleft (160);
      forwd (2);
      turnright (160);
      forwd (5)
  end;
  home;

  closegraph;
  nosound;
  textmode(lo(100));
  textcolor (0);
  write (' ');
  clrscr;
  delay (500);

end;
{---------------------------------------------------------------------------}
procedure board;
 begin
 detectgraph (device, mode);
  initgraph (device, mode, 'C:\progra~1\TP7\bgi');
  setfillstyle (solidfill,7);
  str (ypos,you);
  str (life,liv);
  str(level,lev);
  floodfill (0,0,8);
  setcolor (black);
  setlinestyle (98 ,solidfill,thickwidth);
  line (170,360,170,375);
  line (170,360,400,360);
  line (170,375,400,375);
  line (400,375,400,360);

  line (100,395,295,395);
  line (100,440,100,395);
  line (100,440,295,440);
  line (295,440,295,395);



  line (150,50,605,50);
  line (150,350,605,350);
  line (150,350,150,50);
  line (605,50,605,350);

  line (50,75, 100, 75);
  line (50,100,100,100);
  line (50,75,50,100);
  line (100,100,100,75);

  line (40,120, 60, 120);
  line (40,300,60,300);
  line (40,120,40,300);
  line (60,300,60,120);

  line (45,125, 55, 125);
  line (45,295,55,295);
  line (45,125,45,295);
  line (55,295,55,125);

  line (80,120, 100, 120);
  line (80,300,100,300);
  line (80,120,80,300);
  line (100,300,100,120);

  line (85,125, 95, 125);
  line (85,295,95,295);
  line (85,125,85,295);
  line (95,295,95,125);

  line (590,355,615,355);
  line (590,385,615,385);
  line (590,355,590,385);
  line (615,355,615,385);

  line (410,385, 410, 400);
  line (410,385, 440, 385);
  line (440, 385, 440, 400);
  line (440, 400, 410, 400);

  line (410,405, 410, 420);
  line (410,405, 440, 405);
  line (440, 405, 440, 420);
  line (440, 420, 410, 420);

  line (410,425, 410, 440);
  line (410,425, 440, 425);
  line (440, 425, 440, 440);
  line (440, 440, 410, 440);

  setfillstyle (solidfill,black);
  floodfill (411,426,0);
  floodfill (411,406,0);floodfill (411,386,0);
  floodfill (86, 126,0);
  Floodfill (46 , 126,0);
  floodfill (591, 356,0);
  setfillstyle (solidfill,blue);
  floodfill (101, 396,0);
  setfillstyle (solidfill,black);
  floodfill (172,361, 0);
  setfillstyle (solidfill,white);
  floodfill (81,200,0);
  floodfill (41,200 , 0);
  setfillstyle (solidfill,green);
  floodfill (180,300,0);
  setfillstyle (solidfill,red);
  floodfill (75,80,0);
  setcolor (black);
  setlinestyle (98,solidfill, 0);
  line (215,51,215,349);
  line (280,51,280,349);
  line (345,51,345,349);
  line (410,51,410,349);
  line (475,51,475,349);
  line (540,51,540,349);
  line (604,110,151,110);
  line (604,170,151,170);
  line (604,230,151,230);
  line (604,290,151,290);

    settextstyle (triplexfont, horizdir, 1);
  setcolor (yellow);
  outtextxy (55,75 ,'FIRE');
  setcolor (white);
  settextstyle (smallfont, horizdir, 6);
    outtextxy (415,383,lev);
outtextxy (415, 403,liv);
outtextxy (110, 399, 'C:\SCARLETT\POTT>_');
outtextxy (175, 357, 'Captian Scarlett');
setcolor (lightred);
outtextxy (415, 423, you);
setcolor (blue);
settextstyle (defaultfont,horizdir,1);
  outtextxy (445,390,'(PRESS ENTER TO FIRE)');
setcolor (black);
  settextstyle (defaultfont,horizdir,1);
  outtextxy (425,365,'MISSILE DESTINATION:');
  outtextxy (360,390,'LEVEL:');
  outtextxy (319,430,'YOU ARE AT:');
  outtextxy (360,410,'LIVES:');
  outtextxy (120,365,'USER:');
  settextstyle (triplexfont,horizdir,5);
  outtextxy (173,0,'    TARGET MAP');
  settextstyle (triplexfont, vertdir, 3);
  outtextxy (5,40 ,'SPECTRUM - 35KZ Missile Launcher');
  setfillstyle (solidfill, lightblue);
  if ypos = 1
  then
  floodfill (170,60,0);
  if ypos = 2
  then
  floodfill (240,60,0);
  if ypos = 3
  then
  floodfill (309,60,0);
  if ypos = 4
  then
  floodfill (370,60,0);
  if ypos = 5
  then
  floodfill (430,60,0);
  if ypos = 6
  then
  floodfill (495,60,0);
  if ypos = 7
  then
  floodfill (560,60,0);
  if ypos = 8
  then
  floodfill (170,120,0);
  if ypos = 9
  then
  floodfill (240,120,0);
  if ypos = 10
  then
  floodfill (309,120,0);
  if ypos = 11
  then
  floodfill (370,120,0);
  if ypos = 12
  then
  floodfill (430,120,0);
  if ypos = 13
  then
  floodfill (495,120,0);
  if ypos = 14
  then
  floodfill (560,120,0);
  if ypos = 15
  then
  floodfill (170,180,0);
  if ypos = 16
  then
  floodfill (240,180,0);
  if ypos = 17
  then
  floodfill (309,180,0);
  if ypos = 18
  then
  floodfill (370,180,0);
  if ypos = 19
  then
  floodfill (430,180,0);
  if ypos = 20
  then
  floodfill (495,180,0);
  if ypos = 21
  then
  floodfill (560,180,0);
  if ypos = 22
  then
  floodfill (170,240,0);
  if ypos = 23
  then
  floodfill (240,240,0);
  if ypos = 24
  then
  floodfill (309,240,0);
  if ypos = 25
  then
  floodfill (370,240,0);
  if ypos = 26
  then
  floodfill (430,240,0);
  if ypos = 27
  then
  floodfill (495,240,0);
  if ypos = 28
  then
  floodfill (560,240,0);
  if ypos = 29
  then
  floodfill (170,300,0);
  if ypos = 30
  then
  floodfill (240,300,0);
  if ypos = 31
  then
  floodfill (309,300,0);
  if ypos = 32
  then
  floodfill (370,300,0);
  if ypos = 33
  then
  floodfill (430,300,0);
  if ypos = 34
  then
  floodfill (495,300,0);
  if ypos = 35
  then
  floodfill (560,300,0);
  setcolor (red);
  settextstyle (triplexfont, horizdir, 2);
  outtextxy (177,68 ,'1');
  outtextxy (245,68 ,'2');
  outtextxy (310,68 ,'3');
  outtextxy (375,68 ,'4');
  outtextxy (440,68 ,'5');
  outtextxy (500,68 ,'6');
  outtextxy (565,68 ,'7');
  outtextxy (177,125 ,'8');
  outtextxy (245,125 ,'9');
  outtextxy (300,125 ,'10');
  outtextxy (364,125 ,'11');
  outtextxy (428,125 ,'12');
  outtextxy (490,125 ,'13');
  outtextxy (555,125 ,'14');
  outtextxy (167,185 ,'15');
  outtextxy (237,185 ,'16');
  outtextxy (300,185 ,'17');
  outtextxy (364,185 ,'18');
  outtextxy (428,185 ,'19');
  outtextxy (490,185 ,'20');
  outtextxy (555,185 ,'21');
  outtextxy (167, 245,'22');
  outtextxy (237,245 ,'23');
  outtextxy (300,245 ,'24');
  outtextxy (364,245 ,'25');
  outtextxy (428,245 ,'26');
  outtextxy (490,245 ,'27');
  outtextxy (555,245 ,'28');
  outtextxy (167,305 ,'29');
  outtextxy (237,305 ,'30');
  outtextxy (300,305 ,'31');
  outtextxy (364,305 ,'32');
  outtextxy (428,305 ,'33');
  outtextxy (490,305 ,'34');
  outtextxy (555,305 ,'35');
  textcolor (white);
end;
{----------------------------------------------------------------------------}
procedure eboard;
 begin
 detectgraph (device, mode);
  initgraph (device, mode, 'C:\progra~1\TP7\bgi');
  setfillstyle (solidfill,blue);
  str (level,lev);
  floodfill (0,0,8);
  setcolor (black);
  setlinestyle (98 ,solidfill,thickwidth);
  line (170,360,170,375);
  line (170,360,400,360);
  line (170,375,400,375);
  line (400,375,400,360);

  line (100,395,295,395);
  line (100,440,100,395);
  line (100,440,295,440);
  line (295,440,295,395);



  line (150,50,605,50);
  line (150,350,605,350);
  line (150,350,150,50);
  line (605,50,605,350);

  line (50,75, 100, 75);
  line (50,100,100,100);
  line (50,75,50,100);
  line (100,100,100,75);

  line (40,120, 60, 120);
  line (40,300,60,300);
  line (40,120,40,300);
  line (60,300,60,120);

  line (45,125, 55, 125);
  line (45,295,55,295);
  line (45,125,45,295);
  line (55,295,55,125);

  line (80,120, 100, 120);
  line (80,300,100,300);
  line (80,120,80,300);
  line (100,300,100,120);

  line (85,125, 95, 125);
  line (85,295,95,295);
  line (85,125,85,295);
  line (95,295,95,125);

  line (410,385, 410, 400);
  line (410,385, 440, 385);
  line (440, 385, 440, 400);
  line (440, 400, 410, 400);


  setfillstyle (solidfill,red);
  floodfill (411,386,0);
  floodfill (86, 126,0);
  Floodfill (46 , 126,0);
  setfillstyle (solidfill,lightblue);
  floodfill (101, 396,0);
  setfillstyle (solidfill,white);
  floodfill (172,361, 0);
  setfillstyle (solidfill,white);
  floodfill (81,200,0);
  floodfill (41,200 , 0);
  setfillstyle (solidfill,green);
  floodfill (180,300,0);
  setfillstyle (solidfill,red);
  floodfill (75,80,0);
  setcolor (black);
  setlinestyle (98,solidfill, 0);
  line (215,51,215,349);
  line (280,51,280,349);
  line (345,51,345,349);
  line (410,51,410,349);
  line (475,51,475,349);
  line (540,51,540,349);
  line (604,110,151,110);
  line (604,170,151,170);
  line (604,230,151,230);
  line (604,290,151,290);

    settextstyle (triplexfont, horizdir, 3);
  setcolor (0);
  outtextxy (390, 410, 'OPPONENT''S TURN');
  settextstyle (triplexfont, horizdir, 1);
  setcolor (yellow);
  outtextxy (55,75 ,'FIRE');
  setcolor (black);
  settextstyle (smallfont, horizdir, 6);
    outtextxy (415,383,lev);
setcolor (white);
outtextxy (110, 399, 'C:\PRISONER\POTT>_');
setcolor (black);
if namchoice = 1
              then
              outtextxy (175, 357,'SAM BECKETT');
            if namchoice = 2
              then
              outtextxy (175, 357,'SEAN HOWARD');
            if namchoice = 3
              then
              outtextxy (175, 357,'MIKE KNIGHT');
            if namchoice = 4
              then
              outtextxy (175, 357,'PAUL SHANKS');
            if namchoice = 5
              then
              outtextxy (175, 357,'DAX GOULDEN');
            if namchoice = 6
              then
              outtextxy (175, 357, 'SCOTT SAMPSON');
            if namchoice = 7
              then
              outtextxy (175, 357,'DAVE WAXX');
            if namchoice = 8
              then
              outtextxy (175, 357, 'JOHN ANDERSON');
            if namchoice = 9
              then
              outtextxy (175, 357,'GEORGE MATHEWS');
            if namchoice = 10
              then
              outtextxy (175, 357,'JOEY GILLANT');
            if namchoice = 11
              then
              outtextxy (175, 357,'HAN MACKAY');
            if namchoice = 12
              then
              outtextxy (175, 357,'DARREN BUCHNAN');
            if namchoice = 13
              then
              outtextxy (175, 357,'CHRIS SPRAGUE');
            if namchoice = 14
              then
              outtextxy (175, 357, 'GLENN CHURCHILL');
            if namchoice = 15
              then
              outtextxy (175, 357, 'SIMON BELMONT');
            if namchoice = 16
              then
              outtextxy (175, 357,  'COLIN JANES');
            if namchoice = 17
              then
              outtextxy (175, 357,'DANNY COMPTON');
            if namchoice = 18
              then
              outtextxy (175, 357,'ANDREW ALLEN');
            if namchoice = 19
              then
              outtextxy (175, 357,'DONNIE SMITH');
            if namchoice = 20
              then
              outtextxy (175, 357,'COREY DANEILS');
            if namchoice = 21
              then
              outtextxy (175, 357,'PAUL VICKERS');
            if namchoice = 22
              then
              outtextxy (175, 357,'RYSHA ISOUCHI');
            if namchoice = 23
              then
              outtextxy (175, 357,'ZACK IOUPE');
            if namchoice = 24
              then
              outtextxy (175, 357,'BARRY MACDONALD');
            if namchoice = 25
              then
              outtextxy (175, 357, 'BILL DOBBIN');
            if namchoice = 26
              then
              outtextxy (175, 357,'SHIENA MANTELL');
            if namchoice = 27
              then
              outtextxy (175, 357,'RENEE HONDA');
            if namchoice = 28
              then
              outtextxy (175, 357,'ANDREA DOW');
            if namchoice = 29
              then
              outtextxy (175, 357,'AMY SIMMS');
            if namchoice = 30
              then
              outtextxy (175, 357,'NATASHA FURLONG');
            if namchoice = 31
              then
              outtextxy (175, 357,'JANA SOFFER');
            if namchoice = 32
              then
              outtextxy (175, 357,'JENNY SCHWARTZ');
            if namchoice = 33
              then
              outtextxy (175, 357,'ALEXA TROUT');
            if namchoice = 34
              then
              outtextxy (175, 357,'BONNIE SMITH');
            if namchoice = 35
              then
              outtextxy (175, 357,'TERRI LEE');
            if namchoice = 36
              then
              outtextxy (175, 357,'MICHELLE ADAMS');
            if namchoice = 37
              then
              outtextxy (175, 357,'LORI MACMASTER');
            if namchoice = 38
              then
              outtextxy (175, 357,'JODI BELL');
            if namchoice = 39
              then
              outtextxy (175, 357,'PAULA MURPHY');
            if namchoice = 40
              then
              outtextxy (175, 357,'SHAWNA JHONSON');
            if namchoice = 41
              then
              outtextxy (175, 357,'SHERRI REDMOND');
            if namchoice = 42
              then
              outtextxy (175, 357,'GRETTEL BAKER');
            if namchoice = 43
              then
              outtextxy (175, 357,'TAWNA WILD');
            if namchoice = 44
              then
              outtextxy (175, 357, 'WENDY LANE');
            if namchoice = 45
              then
              outtextxy (175, 357,'LEAH RICHARDS');
            if namchoice = 46
              then
              outtextxy (175, 357,'SHANNON MURPHY');
            if namchoice = 47
              then
              outtextxy (175, 357, 'LISA MURRAY');
            if namchoice = 48
              then
              outtextxy (175, 357, 'CARRIE HOWSER');
            if namchoice = 49
              then
              outtextxy (175, 357, 'DANEILLE SIMPSON');
            if namchoice = 50
              then
              outtextxy (175, 357,'NATALIE HANS');
setcolor (white);
  settextstyle (defaultfont,horizdir,1);

  outtextxy (360,390,'LEVEL:');

  outtextxy (120,365,'USER:');
  settextstyle (triplexfont,horizdir,5);
  outtextxy (173,0,'    TARGET MAP');
  settextstyle (triplexfont, vertdir, 3);
  outtextxy (5,31 ,'SPECTRUM - 24NPK Missile Launcher');

  setcolor (red);
  settextstyle (triplexfont, horizdir, 2);
  outtextxy (177,68 ,'1');
  outtextxy (245,68 ,'2');
  outtextxy (310,68 ,'3');
  outtextxy (375,68 ,'4');
  outtextxy (440,68 ,'5');
  outtextxy (500,68 ,'6');
  outtextxy (565,68 ,'7');
  outtextxy (177,125 ,'8');
  outtextxy (245,125 ,'9');
  outtextxy (300,125 ,'10');
  outtextxy (364,125 ,'11');
  outtextxy (428,125 ,'12');
  outtextxy (490,125 ,'13');
  outtextxy (555,125 ,'14');
  outtextxy (167,185 ,'15');
  outtextxy (237,185 ,'16');
  outtextxy (300,185 ,'17');
  outtextxy (364,185 ,'18');
  outtextxy (428,185 ,'19');
  outtextxy (490,185 ,'20');
  outtextxy (555,185 ,'21');
  outtextxy (167, 245,'22');
  outtextxy (237,245 ,'23');
  outtextxy (300,245 ,'24');
  outtextxy (364,245 ,'25');
  outtextxy (428,245 ,'26');
  outtextxy (490,245 ,'27');
  outtextxy (555,245 ,'28');
  outtextxy (167,305 ,'29');
  outtextxy (237,305 ,'30');
  outtextxy (300,305 ,'31');
  outtextxy (364,305 ,'32');
  outtextxy (428,305 ,'33');
  outtextxy (490,305 ,'34');
  outtextxy (555,305 ,'35');
  textcolor (white);
end;
{----------------------------------------------------------------------------}
Procedure orderinfo;                  {order information}
begin
  clrscr;
  textcolor (0);
  writeln('  ');
  clrscr;
  delay (2000);
  WriteLn;WriteLn;WriteLn;WriteLn;Writeln;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  textcolor (white);
  Writeln ('                             Thank you for playing');
  textcolor (red);
  Write('                           PRISONERS');
  textcolor (white);
  write(' OF THE ');
  textcolor (blue);
  write ('TRIANGLE');
  textcolor (0);
  delay (4000);
  clrscr;
  WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  textcolor (2);Write ('                       ');Write ('I');
  textcolor (0+(04));delay (200);Write ('f');
  textcolor (0+(01));delay (300);Write (' ');
  textcolor (0+(12));delay (100);Write ('y');
  textcolor (0+(13));delay (200);Write ('o');
  textcolor (0+(4));delay (200);Write ('u');
  textcolor (0+(5));delay (300);Write (' ');
  textcolor (0+(15));delay (500);Write ('d');
  textcolor (0+(7));delay (400);Write ('i');
  textcolor (0+(10));delay (600);Write ('d');
  textcolor (0+(9));delay (700);Write ('n');
  textcolor (0+(10));delay (800);Write ('''');
  textcolor (0+(1));delay (300);Write ('t');
  textcolor (0+(12));delay (200);Write (' ');
  textcolor (0+(3));delay (400);Write ('p');
  textcolor (0+(14));delay (100);Write ('a');
  textcolor (0+(5));delay (300);Write ('y');
  textcolor (0+(16));delay (500);Write (' ');
  textcolor (0+(7));delay (600);Write ('f');
  textcolor (0+(13));delay (300);Write ('o');
  textcolor (0+(9));delay (200);Write ('r');
  textcolor (0+(10));delay (400);Write (' ');
  textcolor (0+(11));delay (400);Write ('t');
  textcolor (0+(12));delay (200);Write ('h');
  textcolor (0+(13));delay (200);Write ('i');
  textcolor (0+(14));delay (00);Write ('s');
  textcolor (0+(05));delay (300);Writeln (' ');
  Write ('                       ');textcolor (0+(8));delay (400);Write ('p');
  textcolor (0+(7));delay (500);Write ('r');
  textcolor (0+(15));delay (300);Write ('o');
  textcolor (0+(9));delay (100);Write ('g');
  textcolor (0+(6));delay (200);Write ('r');
  textcolor (0+(1));delay (400);Write ('a');
  textcolor (0+(12));delay (300);Write ('m');
  textcolor (0+(13));delay (500);Write (',');
  textcolor (0+(14));delay (1100);Write (' ');
  textcolor (0+(15));delay (400);Write ('p');
  textcolor (0+(6));delay (20);Write ('l');
  textcolor (0+(12));delay (300);Write ('e');
  textcolor (0+(8));delay (400);Write ('a');
  textcolor (0+(14));delay (200);Write ('s');
  textcolor (0+(3));delay (500);Write ('e');
  textcolor (0+(1));delay (210);Write (' ');
  textcolor (0+(12));delay (600);Write ('s');
  textcolor (0+(13));delay (400);Write ('e');
  textcolor (0+(14));delay (200);Write ('n');
  textcolor (0+(5));delay (400);Write ('d');
  textcolor (0+(16));delay (100);Write (' ');
  textcolor (0+(6));delay (500);Write ('$');
  textcolor (0+(7));delay (200);Write ('9');
  textcolor (0+(6));delay (600);Write ('.');
  textcolor (0+(5));delay (400);Write ('9');
  textcolor (0+(4));delay (300);Write ('5');
  Writeln;
  write ('                       ');
  textcolor (0+(14));delay (500);Write ('t');
  textcolor (0+(8));delay (600);Write ('o');
  textcolor (0+(3));delay (800);Write (':');
  textcolor (0);
  writeLn ('   ');
  delay (3000);
  clrscr;
  WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  TextColor (lightred);
  WriteLn ('                                  TkA');
  delay (1000);
  textcolor (lightgreen);
  writeLn ('                            Site ##, Box ## RR# #');
  Delay (1000);
  textcolor (lightblue);
  WriteLn ('                                  #######, NS');
  Delay (1000);
  Textcolor (white);
  WriteLn ('                                    ### ###');
  textcolor (black);
  Delay (6000);
  textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   write (' ');
   clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  TextColor (lightred);
  WriteLn ('                                  TkA');
  textcolor (lightgreen);
  writeLn ('                            Site ##, Box ## RR# #');
  textcolor (lightblue);
  WriteLn ('                                  #######, NS');
  Textcolor (white);
  WriteLn ('                                    ### ###');
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  TextColor (lightred);
  WriteLn ('                                  TkA');
  textcolor (lightgreen);
  writeLn ('                            Site ##, Box ## RR# #');
  textcolor (lightblue);
  WriteLn ('                                  #######, NS');
  Textcolor (white);
  WriteLn ('                                    ### ###');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
  TextColor (lightred);
  WriteLn ('                                  TkA');
  textcolor (lightgreen);
  writeLn ('                            Site ##, Box ## RR# #');
  textcolor (lightblue);
  WriteLn ('                                  #######, NS');
  Textcolor (white);
  WriteLn ('                                    ### ###');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (4000);
   textcolor (white);
   write (' ');
end;                             {end of order information}
{===========================================================================}
begin                                 {main program}
  nosound;
  clrscr;
  Credits;
  repeat
    Begin
      textcolor (0);
      write (' ');
      clrscr;
      delay (1000);
      repeat
        begin
          detectgraph (device, mode);
          initgraph (device, mode, 'C:\progra~1\TP7\bgi');
          setfillstyle(widedotfill,5);
          floodfill (3,3,3);
          setcolor (red);
          settextstyle (triplexfont, horizdir, 4);
          outtextxy (getmaxx - 410, 75,'PRISONERS');
          setcolor (white);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 360, 120,'OF THE');
          setcolor (blue);
          settextstyle (triplexfont, horizdir, 4);
          outtextxy (getmaxx - 400, 145,'TRIANGLE');
          Delay (000);
          textcolor (0);
          setcolor (lightgreen);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 400, 200,'S');
          setcolor (white);
          outtextxy (getmaxx - 380, 200,'tory..');
          setcolor (lightgreen);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 400, 220,'H');
          setcolor (white);
          outtextxy (getmaxx - 380, 220,'ow to play..');
          setcolor (lightgreen);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 400, 240,'G');
          setcolor (white);
          outtextxy (getmaxx - 380, 240,'ame..');
          setcolor (lightgreen);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 400, 260,'Q');
          setcolor (white);
          outtextxy (getmaxx - 380, 260,'uit game..');
          setcolor (yellow);
          settextstyle (triplexfont, horizdir, 1);
          outtextxy (getmaxx - 450, 312,'Type the letter of your choice. ');
          textcolor (lightgreen);
          choice := readkey;
          closegraph;
          textcolor (0);
          write (' ');
        end;
      until (choice ='s') or (choice ='S') or (choice ='h') or (choice ='H')or
      (choice ='g') or (choice ='G')or(choice ='q') or (choice ='Q');
      textcolor (0);
      write (' ');
      clrscr;
      if (choice ='s') or (choice ='S')
        then story;
      if (choice ='h') or (choice ='H')
        then help;
      if (choice ='g') or (choice ='G')
        then
          Begin
            randomize;
            one := 0;
            hard :=1;
            i :=0;
              nosound;
            textcolor (0);
            write(' ');
            ClrScr;
            delay (1000);
            life := 5;
            level := 1;
            repeat
              begin
                try := 0;
                Repeat
                  ypos := (1+random(35 -1+1));
                until (ypos < 36) and (ypos > 0);
                  repeat
                    epos := (1+random(35 -1+1));
                  until (epos < 36) and (epos > 0) and (epos <> ypos);
                  detectgraph (device, mode);
                  initgraph (device, mode, 'C:\progra~1\TP7\bgi');
                  setcolor (7);
                  circle ( (getmaxx - (getmaxx +80)), getmaxY div 2, 50);
                  while i < 700 do
                    begin
                      setcolor (0);
                      circle ( i, getmaxY div 2, 50);
                      i := i + 2;
                      setcolor (random (10));
                      circle ( i , getmaxY div 2, 50)
                    end;
                  delay (1000);
                  namchoice := (1+random(50 -1+1));
                  closegraph;
                  closegraph;
                  textcolor (0);
                  write (' ');
                  clrscr;
                  textcolor (lightgreen);
                  Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;
                  WriteLN ('                                 LEVEL ',level);
                  delay (3000);
                  textcolor (0);
                  write (' ');
                  clrscr;
                  if level = 1
                    then hard := 1;
                  if level = 2
                    then hard := 2;
                  if level = 5
                    then hard := 3;
                  if level = 10
                  then hard := 4;
                   textcolor (31);
                  Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;Writeln;
                  WriteLN ('                                GET READY!');
                  delay (3000);
                  textcolor (0);
                  write (' ');
                  clrscr;
                  repeat
                    begin
                      repeat
                        begin
                          clrscr;
                          board;
                          gotoxy (75,24);
                          readln (target)
                        end;
                      until (target > 0) and (target < 36);
                      missile;
                      board;
                      setfillstyle (solidfill, red);
                      sound (200);
                      if target = 1
                        then
                          floodfill (170,60,0);
                      if target = 2
                        then
                          floodfill (240,60,0);
                      if target = 3
                        then
                          floodfill (309,60,0);
                      if target = 4
                        then
                          floodfill (370,60,0);
                      if target = 5
                        then
                          floodfill (430,60,0);
                      if target = 6
                        then
                          floodfill (495,60,0);
                      if target = 7
                        then
                          floodfill (560,60,0);
                      if target = 8
                        then
                          floodfill (170,120,0);
                      if target = 9
                        then
                          floodfill (240,120,0);
                      if target = 10
                        then
                          floodfill (309,120,0);
                      if target = 11
                        then
                          floodfill (370,120,0);
                      if target = 12
                        then
                          floodfill (430,120,0);
                      if target = 13
                        then
                          floodfill (495,120,0);
                      if target = 14
                        then
                          floodfill (560,120,0);
                      if target = 15
                        then
                          floodfill (170,180,0);
                      if target = 16
                        then
                          floodfill (240,180,0);
                      if target = 17
                        then
                          floodfill (309,180,0);
                      if target = 18
                        then
                          floodfill (370,180,0);
                      if target = 19
                        then
                          floodfill (430,180,0);
                      if target= 20
                        then
                          floodfill (495,180,0);
                      if target= 21
                        then
                          floodfill (560,180,0);
                      if target = 22
                        then
                          floodfill (170,240,0);
                      if target = 23
                        then
                          floodfill (240,240,0);
                      if target = 24
                        then
                          floodfill (309,240,0);
                      if target = 25
                        then
                          floodfill (370,240,0);
                      if target = 26
                        then
                          floodfill (430,240,0);
                      if target = 27
                        then
                          floodfill (495,240,0);
                      if target = 28
                        then
                          floodfill (560,240,0);
                      if target = 29
                        then
                          floodfill (170,300,0);
                      if target = 30
                        then
                          floodfill (240,300,0);
                      if target = 31
                        then
                          floodfill (309,300,0);
                      if target = 32
                        then
                          floodfill (370,300,0);
                      if target = 33
                        then
                          floodfill (430,300,0);
                      if target = 34
                        then
                          floodfill (495,300,0);
                      if target = 35
                        then
                          floodfill (560,300,0);
                      delay (25);
                      nosound;
                      sound (300);
                      delay (50);
                      nosound;
                      sound (400);
                      delay (75);
                      nosound;
                      sound (500);
                      delay (100);
                      nosound;
                      sound (200);
                      delay (500);
                      nosound;
                      delay (1000);
                      textcolor (0);
                      textmode (lo (100));
                      textcolor (0);
                      write (' ');
                      clrscr;
                      if (target <> epos) AND (TARGET <> ypos)
                        then
                          begin
                            delay (1000);
                            textcolor (lightgreen);
                            sound (200);
                            WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;
                            WRITELN ('                                    MISS!');
                            delay (500);
                            nosound ;
                            sound (100);
                            delay (1000);
                            nosound;
                            textcolor (0);
                            write (' ');
                            clrscr;
                            delay (1000);
                            eboard;
                            delay (5000);
                            for one := 1 to hard do
                            begin
                            try := try + 1;
                            repeat
                              target := (1+random(35 -1+1));
                            until target <> epos;
                            if try = 35
                              then target := ypos;
                            missile;
                            eboard;
                            setfillstyle (solidfill, red);
                      sound (200);
                      if target = 1
                        then
                          floodfill (170,60,0);
                      if target = 2
                        then
                          floodfill (240,60,0);
                      if target = 3
                        then
                          floodfill (309,60,0);
                      if target = 4
                        then
                          floodfill (370,60,0);
                      if target = 5
                        then
                          floodfill (430,60,0);
                      if target = 6
                        then
                          floodfill (495,60,0);
                      if target = 7
                        then
                          floodfill (560,60,0);
                      if target = 8
                        then
                          floodfill (170,120,0);
                      if target = 9
                        then
                          floodfill (240,120,0);
                      if target = 10
                        then
                          floodfill (309,120,0);
                      if target = 11
                        then
                          floodfill (370,120,0);
                      if target = 12
                        then
                          floodfill (430,120,0);
                      if target = 13
                        then
                          floodfill (495,120,0);
                      if target = 14
                        then
                          floodfill (560,120,0);
                      if target = 15
                        then
                          floodfill (170,180,0);
                      if target = 16
                        then
                          floodfill (240,180,0);
                      if target = 17
                        then
                          floodfill (309,180,0);
                      if target = 18
                        then
                          floodfill (370,180,0);
                      if target = 19
                        then
                          floodfill (430,180,0);
                      if target= 20
                        then
                          floodfill (495,180,0);
                      if target= 21
                        then
                          floodfill (560,180,0);
                      if target = 22
                        then
                          floodfill (170,240,0);
                      if target = 23
                        then
                          floodfill (240,240,0);
                      if target = 24
                        then
                          floodfill (309,240,0);
                      if target = 25
                        then
                          floodfill (370,240,0);
                      if target = 26
                        then
                          floodfill (430,240,0);
                      if target = 27
                        then
                          floodfill (495,240,0);
                      if target = 28
                        then
                          floodfill (560,240,0);
                      if target = 29
                        then
                          floodfill (170,300,0);
                      if target = 30
                        then
                          floodfill (240,300,0);
                      if target = 31
                        then
                          floodfill (309,300,0);
                      if target = 32
                        then
                          floodfill (370,300,0);
                      if target = 33
                        then
                          floodfill (430,300,0);
                      if target = 34
                        then
                          floodfill (495,300,0);
                      if target = 35
                        then
                          floodfill (560,300,0);
                      delay (25);
                      nosound;
                      sound (300);
                      delay (50);
                      nosound;
                      sound (400);
                      delay (75);
                      nosound;
                      sound (500);
                      delay (100);
                      nosound;
                      sound (200);
                      delay (500);
                      nosound;
                      delay (1000);
                      textcolor (0);
                      textmode (lo (100));
                      textcolor (0);
                      write (' ');
                      clrscr;
                      if (target <> epos) AND (TARGET <> ypos)
                        then
                          begin
                            delay (1000);
                            textcolor (lightgreen);
                            sound (200);
                            WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;
                            WRITELN ('                                    MISS!');
                            delay (500);
                            nosound ;
                            sound (100);
                            delay (1000);
                            nosound;
                            textcolor (0);
                            write (' ');
                            clrscr;
                            delay (1000);
                          end;
                      if target = ypos
                        then
                          one := hard;
                      end;
                    end;
                    end;
                    until (target = epos) or (target = ypos);
                  if target = epos
           then
             begin
               textmode (lo(100));
               level := level +1;
               textcolor (0);
               write (' ');
               clrscr;
               textcolor (yellow);
               WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;
               WRITELN ('                            YOUR OPPONENT IS DEFEATED!');
   sound (500);
   delay (100);
   nosound;
   delay (50);
   sound (500);
   delay (100);
   nosound;
   delay (50);
   sound (550);
   delay (100);
   nosound;
   delay (50);
   sound (600);
   delay (200);
   nosound;
   delay (50);
   sound (525);
   delay (100);
   nosound;
   delay (50);
   sound (600);
   nosound;
   delay (1000);
   textcolor (0);
   write (' ');
   clrscr;
   delay (1000);
             end;
             if target = ypos
               then
                 begin
                   textcolor (0);
                   textmode (lo (100));
                   textcolor (0);
                   write (' ');
                   clrscr;
                   textcolor (36);
                   WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;WRITELN;
                   WRITELN ('                         YOU''VE BEEN HIT BY A MISSILE!');
                   life := life -1;
                   sond := 0;
                     repeat
                       begin
                         sond := sond + 1;
                         sound (100);
                         delay (25);
                         sound (150);
                         delay (50);
                         sound (200);
                         delay (200);
                         nosound;
                         delay (200)
                       end;
                     until sond = 10;
                  textcolor (0);
                  write (' ');
                  clrscr;
                  end;

end;
until (level >= 11) or (life < 0);
if life < 0
then
begin
closegraph;
Textcolor (0);
write(' ');
clrscr;
textcolor( white);
nosound;
delay (3000);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
Write ('     "He was a brave man,');
sound (200);
delay (400);
nosound ;
delay (200);
sound (200);
delay (100);
nosound ;
delay (100);
sound (300);
delay (2000);
nosound ;
delay (200);
Write (' never fearing the unknown,');
sound (200);
delay (400);
nosound ;
delay (200);
sound (300);
delay (100);
nosound ;
delay (100);
sound (400);
delay (2000);
nosound ;
delay (200);
write (' and always serving in      honesty and goodness.  ');
sound (200);
delay (450);
nosound ;
delay (100);
sound (300);
delay (100);
nosound ;
delay (50);
sound (400);
delay (700);
nosound ;
delay (100);
Write ('Captian Scarlett,');
sound (200);
delay (450);
nosound ;
delay (100);
sound (300);
delay (100);
nosound ;
delay (50);
sound (400);
delay (700);
nosound ;
delay (100);
Write (' if you are with us, ');
sound (200);
delay (400);
nosound ;
delay (200);
sound (300);
delay (100);
nosound ;
delay (100);
sound (400);
delay (2000);
nosound ;
delay (200);
Write ('we want you to     know,');
sound (300);
delay (600);
nosound ;
delay (100);
sound (400);
delay (600);
nosound ;
delay (100);
sound (450);
delay (1500);
nosound ;
delay (100);
write (' that we will forever hold a place for you in our heart.');
sound (400);
delay (600);
nosound ;
delay (100);
sound (300);
delay (600);
nosound ;
delay (100);
sound (200);
delay (1500);
nosound ;
delay (100);
Write ('  In the name of   our lord, Amen."');
sound (200);
delay (400);
nosound ;
delay (200);
sound (200);
delay (100);
nosound ;
delay (100);
sound (300);
delay (3000);
nosound ;
textcolor (0);
write (' ');
delay (3000);
clrscr;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (RED);
WriteLn('                                 GAME OVER');
textcolor (0);
write(' ');
delay (6000);
   clrscr;
   sound (70);
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   write (' ');
   clrscr;
   sound (70);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (RED);
WriteLn('                                 GAME OVER');
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (RED);
WriteLn('                                 GAME OVER');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (RED);
WriteLn('                                 GAME OVER');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (2000)
end;
if (level >= 11)
then
begin
closegraph;
textmode (lo(100));
textcolor (0);
write (' ');
clrscr;
textcolor (lightblue);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('     Captian Scarlett stands in silence.');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (3000);
textcolor (red);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
Write ('     "Show yourself, ');
delay (2000);
Write ('Mystieron agent!"');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (4000);
textcolor (lightblue);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('     Suddenly,');
delay (2000);
Write (' the floor opens up below him, ');
delay (3000);
write ('plunging Captian Scarlett into the darkness!');
sound (900);
delay (25);
nosound;
sound (850);
delay (50);
nosound;
sound (800);
delay (50);
nosound;
sound (750);
delay (50);
nosound;
sound (700);
delay (50);
nosound;
sound (650);
delay (50);
nosound;
sound (600);
delay (50);
nosound;
sound (550);
delay (50);
nosound;
sound (500);
delay (50);
nosound;
sound (450);
delay (50);
nosound;
sound (400);
delay (50);
nosound;
sound (350);
delay (50);
nosound;
sound (300);
delay (50);
nosound;
sound (250);
delay (50);
nosound;
sound (200);
delay (50);
nosound;
sound (150);
delay (50);
nosound;
sound (100);
delay (50);
nosound;
sound (50);
delay (500);
nosound;
delay (3000);
textcolor (0);
write ('  ');
clrscr;
delay (4000);
textcolor (lightblue);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('     He lands with a thud,');
delay (3000);
write (' and tries to regain his bearings.');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (4000);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (7);
write ('     "So Captian Scarlett,');
delay (2000);
write (' you''ve finally beaten our game."');
delay (4000);
textcolor (0);
write ('  ');
clrscr;
delay (1000);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
textcolor (red);
write ('     "Captian Black!  ');
delay (2000);
write ('Yu...... ');
delay (1000);
write ('You...... ');
delay (1000);
write ('you''re the Mystieron agent?"');
delay (4000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (7);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('     "Yes Captian Scarlett.');
delay (2000);
write ('  Your friend, ');
delay (2000);
write ('Captian Black, ');
delay (2000);
write ('was killed in a trap of the Mystieron''s devising, ');
delay (4000);
write ('and I took over his body form."');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (red);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('      "Well it''s time Captian Black is formally laid to rest!"');
delay (5000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (lightblue);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('     As Captian Scarlett raises his Missile Launcher, ');
delay (2000);
write ('Captian Black jumps into  an escape pod.');
delay (4000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (7);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
 write ('     "Not today, ');
 delay (2000);
 write ('Scarlett!"');
 delay (2000);
 textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (lightblue);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write ('     The escape pod roars to life, ');
 delay (2000);
 write ('and shoots out of the underwater cavern,');
 delay (3000);
 write (' and into space.');
 delay (4000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (red);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('     "I will avenge Captian Black''s death, ');
delay (3000);
write ('this I vow."');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (4000);
textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('     ".... and are all of the prisoners accounted for, ');
delay (4000);
write ('Captian Scarlett?"');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (red);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('     "All except for the unfortunate ten that I was forced to destroy, ');
delay (4000);
write ('Colonel."');
delay (2000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('     "Unfortunate indeed.  ');
delay (4000);
write ('From this point, ');
delay (3000);
write ('we have a new enemy.  ');
delay (3000);
textcolor (0);
write (' ');
clrscr;
delay (1000);
textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('                               the Mystieron."');
delay (4000);
textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
  delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   write (' ');
   clrscr;
   sound (70);
   textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('                               the Mystieron."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (200);
   textcolor (0);
   writeln ('  ');
   clrscr;
   sound (70);
   delay (25);
   sound (40);delay (125);
   nosound;
   delay (250);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('                               the Mystieron."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
    textcolor (0);
   write (' ');clrscr;
   sound (70);
   textcolor (lightblue);
   textcolor (white);
WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;WriteLn;
write('                               the Mystieron."');
   delay (25);
   sound (40);delay (75);
   nosound;
   delay (100);
   textcolor (0);
   writeln ('  ');clrscr;
   sound (70);
   delay (25);
   sound (40);
   delay (150);
   nosound;
   delay (4000);
end;

end;

      end;
    Until (choice ='q') or (choice ='Q');
    orderinfo;
  clrscr;
textcolor (white);
write(' ');
end.