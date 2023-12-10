program monopoly;

uses
graph,crt ;

label
10,20;
var
x1,y1,x2,y2,
device,
mode,
getmax,
a,
b,
c,roll,
money,
rollcount:integer;
mon,
temp,roll1:string;
ch:char;

procedure instructions;
begin
textcolor(2);
writeln('This is a game of skill and knowledge.');
writeln('You are Joe Rectangle and you move around the');
writeln('commercial section in your city a random number of blocks.');
writeln('you have a thousand dollars to your name and owe bookies');
writeln('5000 dollars.If you manage to earn this money in 60 days they will');
writeln('let you off.If not... they kill ya. Good luck!');
writeln('Do you need instructions(y/n)?');
readln(ch);
if ch='y'
then begin
writeln('Just keep hiting enter!!');
readln;
end;
end;


procedure intro;
begin
setcolor(1);
rectangle(25,25,getmaxx-25,getmaxy-25);
setfillstyle(hatchfill,2);
floodfill(0,0,1);
setfillstyle(solidfill,1);
floodfill(225,230,1);
setcolor(15);
settextstyle(triplexfont,horizdir,2);
outtextxy(50,50,'J M Programing presents');
settextstyle(sansseriffont,horizdir,5);
outtextxy(100,100,'The game of');
settextstyle(triplexfont,horizdir,8);
outtextxy(150,150,'Monopoly');
settextstyle(smallfont,horizdir,5);
outtextxy(375,250,'press enter to continue');

setcolor(16);
rectangle(225,300,300,375);
line(225,300,275,260);
line(300,300,350,260);
line(275,260,350,260);
line(350,260,350,313);
line(335,345,300,375);


rectangle(335,325,410,400);
line(335,325,385,285);
line(460,285,460,360);
line(385,285,460,285);
line(410,325,410,400);
line(460,285,410,325);
line(410,400,460,360);

setfillstyle(solidfill,15);
floodfill(226,301,16);
floodfill(315,345,16);
floodfill(235,299,16);

floodfill(336,326,16);
floodfill(386,286,16);
floodfill(411,380,16);


setcolor(16);
setfillstyle(solidfill,16);
circle(235,315,5);floodfill(236,316,16);
circle(263,315,5);floodfill(264,316,16);
circle(290,315,5);floodfill(291,316,16);
circle(235,360,5);floodfill(236,361,16);
circle(263,360,5);floodfill(264,361,16);
circle(290,360,5);floodfill(291,361,16);

circle(247,293,5);floodfill(248,294,16);
circle(282,282,5);floodfill(283,283,16);
circle(319,271,5);floodfill(320,273,16);

circle(310,310,5);floodfill(311,311,16);


circle(347,387,5);floodfill(348,388,16);
circle(400,335,5);floodfill(401,336,16);

circle(406,318,5);floodfill(407,319,16);
circle(357,318,5);floodfill(358,319,16);
circle(390,293,5);floodfill(391,294,16);
circle(436,293,5);floodfill(437,294,16);

circle(435,345,5);floodfill(436,346,16);

readkey;
cleardevice;
end;

procedure monney; {writes money on screen}
begin
settextstyle(triplexfont,horizdir,3);
setcolor(11);
outtextxy(575,100,mon);
outtextxy(575,175,roll1);
str(money,mon);
str(rollcount,roll1);
settextstyle(triplexfont,horizdir,3);
setcolor(16);
outtextxy(575,100,mon);
outtextxy(575,175,roll1);
end;

procedure chance; {the chance cards}
begin
c:=(random(15)+1);
if (c=1) then
begin
money:=money+50;
end;
if (c=2) then
begin
money:=money+25;
end;
if (c=3) then
begin
money:=money+200;
end;
if (c=4) then
begin
money:=money+20;
end;
if (c=5) then
begin
money:=money+100;
end;
if (c=6) then
begin
money:=money+100;
end;
if (c=7) then
begin
money:=money-50;
end;
if (c=8) then
begin
money:=money+100;
end;
if (c=9) then
begin
money:=money+50;
end;
if (c=10) then
begin
money:=money-100;
end;
if (c=11) then
begin
money:=money+10;
end;
if (c=12) then
begin
money:=money-150;
end;
if (c=13) then
begin
money:=money+45;
end;
if (c=14) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=505;x2:=515;y1:=405;y2:=415;
rectangle(x1,y1,x2,y2);
readkey;
end;
if (c=15) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=55;x2:=65;y1:=405;y2:=415;
money:=money-50;
readkey;
end;

end;


procedure com; {community cheast cards}
begin
c:=(random(12)+1);
if (c=1) then
begin
money:=money+50;
end;
if (c=2) then
begin
money:=money-15;
end;
if (c=3) then
begin
money:=money+150;
end;
if (c=4) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=55;x2:=65;y1:=405;y2:=415;
money:=money-50;
readkey;
end;
if (c=5) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=280;x2:=290;y1:=405;y2:=415;
money:=money+200;
readkey;
end;
if (c=6) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=505;x2:=515;y1:=369;y2:=379;
readkey;
end;
if (c=7) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=55;x2:=65;y1:=369;y2:=379;
readkey;
end;
if (c=8) then
begin
readkey;
setcolor(11);
rectangle(x1,y1,x2,y2);
setcolor(16);
x1:=100;x2:=110;y1:=45;y2:=55;
readkey;
end;
if (c=9) then
begin
money:=money-50;
end;
if (c=10) then
begin
money:=money-100;
end;
if (c=11) then
begin
money:=money+10;
end;
if (c=12) then
begin
money:=money-150;
end;

end;




procedure dice;       {dice roll}
begin
settextstyle(triplexfont,horizdir,4);
setcolor(11);
outtextxy(575,30,temp);
a:=(random(6)+1);
b:=(random(6)+1);
roll:=a+b;
str(roll,temp);
settextstyle(triplexfont,horizdir,4);
setcolor(16);
outtextxy(575,30,temp);
end;

procedure spaces; {what happens on each space}
begin
if (x1=505) and  (y1=405 )        {on the bottom}
then begin money:=money+200;        {go}
     readkey;
     end;

if (x1=460) and  (y1=405)
then begin money:=money-200;
     readkey;
     end;

if (x1=415) and  (y1=405)       {community chest}
then begin com;
     readkey;
     end;

if (x1=370) and  (y1=405)
then begin money:=money+100;
     readkey;
     end;

if (x1=325) and  (y1=405)         {income tax}
then begin money:=money-200;
     readkey;
     end;

if (x1=280) and  (y1=405)
then begin money:=money-300;
     readkey;
     end;

if (x1=235) and  (y1=405)
then begin money:=money+500;
     readkey;
     end;

if (x1=190) and  (y1=405)       {chance}
then begin chance;
     readkey;
     end;

if (x1=145) and  (y1=405)
then begin money:=money+20;
     readkey;
     end;

if (x1=100) and  (y1=405)
then begin money:=money-345;
     readkey;
     end;

if (x1=55) and  (y1=405)   {jail}
then begin money:=money+65;
     readkey;
     end;


if (x1=505) and  (y1=45 )        {on the top}
then begin setcolor(11);                   {go to jail}
           readkey;
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           money:=money-50;
           readkey;
     end;

if (x1=460) and  (y1=45)
then begin money:=money-56;
     readkey;
     end;

if (x1=415) and  (y1=45)
then begin money:=money+200;
     readkey;
     end;

if (x1=370) and  (y1=45)
then begin money:=money+200;
     readkey;
     end;

if (x1=325) and  (y1=45)
then begin money:=money+200;
     readkey;
     end;

if (x1=280) and  (y1=45)
then begin money:=money-200;
     readkey;
     end;

if (x1=235) and  (y1=45)
then begin money:=money-300;
     readkey;
     end;

if (x1=190) and  (y1=45)     {chance}
then begin chance;
     readkey;
     end;

if (x1=145) and  (y1=45)
then begin money:=money-50;
     readkey;
     end;

if (x1=100) and  (y1=45)
then begin money:=money-100;
     readkey;
     end;

if (x1=55) and  (y1=45)       {free parking}
then begin money:=money+500;
     readkey;
     end;



if (x1=55) and  (y1=369)    {left side}
then begin money:=money+20;
     readkey;
     end;
if (x1=55) and  (y1=333)
then begin money:=(money-(roll*7));
     readkey;
     end;
if (x1=55) and  (y1=297)
then begin money:=money+300;
     readkey;
     end;
if (x1=55) and  (y1=261)
then begin money:=money-500;
     readkey;
     end;
if (x1=55) and  (y1=225)
then begin money:=money+50;
     readkey;
     end;
if (x1=55) and  (y1=189)
then begin money:=money-25;
     readkey;
     end;
if (x1=55) and  (y1=153)
then begin money:=money+100;
     readkey;
     end;
if (x1=55) and  (y1=117)     {community chest}
then begin com;
     readkey;
     end;
if (x1=55) and  (y1=81)
then begin money:=money-502;
     readkey;
     end;



if (x1=505) and  (y1=369)    {right side}
then begin money:=money+2000;
     readkey;
     end;
if (x1=505) and  (y1=333)
then begin money:=money-75;  {luxury tax}
     readkey;
     end;
if (x1=505) and  (y1=297)
then begin money:=money+500;
     readkey;
     end;
if (x1=505) and  (y1=261)
then begin chance;              {chance card}
     readkey;
     end;
if (x1=505) and  (y1=225)
then begin money:=money-450;
     readkey;
     end;
if (x1=505) and  (y1=189)
then begin money:=money+432;
     readkey;
     end;
if (x1=505) and  (y1=153)
then begin com;           {community chest}
     readkey;
     end;
if (x1=505) and  (y1=117)
then begin money:=money-321;
     readkey;
     end;
if (x1=505) and  (y1=81)
then begin money:=money+567;
     readkey;
     end;

end;

begin
20:readln;
clrscr;
x1:=505;
x2:=515;
y1:=405;
y2:=415;
money:=1000;
rollcount:=0;
instructions;
randomize;
detectgraph(device,mode);
initgraph(device,mode, 'c:\tp\bgi');
intro;
setlinestyle(solidln,4,thickwidth);
setfillstyle(solidfill,11);
floodfill(0,0,3);
rectangle(0,0,560,479); {outside border}

line(75,0,75,479);      {inside border ls}
line(485,0,485,479);    {inside border rs}

line(0,75,560,75);      {inside border  top}
line(0,400,560,400);     {inside border bottom}

line(75,25,485,25);    {division top}
line(75,450,485,450);   {division bottom}

line(25,75,25,400);     {division ls}
line(535,75,535,400);   {division rs}

line(125,0,125,75);
line(170,0,170,75);
line(215,0,215,75);
line(260,0,260,75);     {properties top 45}
line(305,0,305,75);
line(350,0,350,75);
line(395,0,395,75);
line(440,0,440,75);

line(125,400,125,479);
line(170,400,170,479);
line(215,400,215,479);
line(260,400,260,479);  {properties bottom 45}
line(305,400,305,479);
line(350,400,350,479);
line(395,400,395,479);
line(440,400,440,479);

line(0,111,75,111);
line(0,147,75,147);
line(0,183,75,183);
line(0,219,75,219);      {properties ls 36}
line(0,255,75,255);
line(0,291,75,291);
line(0,327,75,327);
line(0,363,75,363);

line(485,111,560,111);
line(485,147,560,147);
line(485,183,560,183);
line(485,219,560,219);       {properties rs 36 }
line(485,255,560,255);
line(485,291,560,291);
line(485,327,560,327);
line(485,363,560,363);

rectangle(560,0,getmaxx,75); {roll box}
settextstyle(triplexfont,horizdir,1);
outtextxy(562,5,'Roll =');                     {box's on screen}
outtextxy(562,80,'Money =');
settextstyle(triplexfont,horizdir,3);
setcolor(16);
rectangle(560,75,getmaxx,150); {money box}
rectangle(560,150,getmaxx,225);{days}
outtextxy(562,155,'Days =');


setcolor(1);
settextstyle(smallfont,horizdir,4);
outtextxy(495,5,'Go To Jail');
outtextxy(3,5,'Free Parking');
outtextxy(3,450,'The Jail');
settextstyle(triplexfont,horizdir,2);
outtextxy(505,425,'GO');

settextstyle(smallfont,horizdir,4);
outtextxy(175,450,'chance');
outtextxy(400,450,'com.');outtextxy(410,460,'chest');
outtextxy(175,10,'chance');
outtextxy(310,450,'income');outtextxy(310,460,'tax');
outtextxy(355,1,'water');outtextxy(355,11,'works');


settextstyle(smallfont,vertdir,4);
outtextxy(540,255,'chance');
outtextxy(1,120,'com.');outtextxy(10,115,'chest');
outtextxy(535,120,'com.');outtextxy(545,115,'chest');
outtextxy(1,330,'elec.');outtextxy(11,330,'Co.');
outtextxy(535,328,'luxry');outtextxy(545,328,'tax');

setcolor(16);
rectangle(x1,y1,x2,y2);
readkey;


repeat
monney;
dice;

if (x1=505) and (y1=405) and (roll>10)                {lower left corner}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-10)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=460) and (y1=405) and (roll>9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-9)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=415) and (y1=405) and (roll>8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-8)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=370) and (y1=405) and (roll>7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-7)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=325) and (y1=405) and (roll>6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-6)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=280) and (y1=405) and (roll>5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-5)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=235) and (y1=405) and (roll>4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-4)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=190) and (y1=405) and (roll>3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-3)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=145) and (y1=405) and (roll=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if(x1=145) and (y1=405) and (roll>=2) and (roll<=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=405-((roll-2) * 36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=100) and (y1=405) and (roll=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=100;x2:=110;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=100) and (y1=405) and (roll<=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=y1-((roll-1)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;





if (x1=55) and (y1=405) and (roll>10)                   {upper left corner}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-10)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=369) and (roll>9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-9)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=333) and (roll>8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-8)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=297) and (roll>7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-7)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=261) and (roll>6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-6)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=225) and (roll>5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-5)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
          end;
if (x1=55) and (y1=189) and (roll>4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-4)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
            goto 10;
            end;
if (x1=55) and (y1=153) and (roll>3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=((roll-3)*45)+x1;x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=55) and (y1=81) and (roll=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=100;x2:=110;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=117) and (roll=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=55) and (y1=81) and (roll=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=81;y2:=91;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=55) and (y1=117) and (roll<=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55+((roll-2)*45);x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=55) and (y1=81) and (roll<=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55+((roll-1)*45);x2:=x1+10;y1:=45;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;

if (x1=505) and (y1=45) and (roll>10)                     {lower right corner}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-10)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=81) and (roll>9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-9)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=117) and (roll>8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-8)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=153) and (roll>7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-7)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=189) and (roll>6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-6)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=225) and (roll>5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-5)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=261) and (roll>4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-4)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=297) and (roll>3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-3)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=333) and (roll>2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-2)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=369) and (roll=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=460;x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=369) and (roll=12)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=369;y2:=379;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=369) and (roll=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=65;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=369) and (roll<=10)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1-((roll-1)*45);x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;




if (x1=55) and (y1=45) and (roll>10)                {upper right corner}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=((roll-10)*36)+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=100) and (y1=45) and (roll>9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-9)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=145) and (y1=45) and (roll>8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-8)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=190) and (y1=45) and (roll>7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-7)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=235) and (y1=45) and (roll>6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-6)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=280) and (y1=45) and (roll>5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-5)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=325) and (y1=45) and (roll>4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-4)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=370) and (y1=45) and (roll>3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=(roll-3)*36+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=460) and (y1=45) and (roll=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=81;y2:=91;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=460) and (y1=45) and (roll>10)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505-((roll-11)*45);x2:=515;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=415) and (y1=45) and (roll>2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=515;y1:=((roll-2)*36)+y1;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if(x1=460) and (y1=45) and (roll<=10)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+((roll-1)*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;




if (x1=505) and (y1=405) and (roll<=10)                 {rolls on bottom}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=460) and (y1=405) and (roll<=9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=460-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=415) and (y1=405) and (roll<=8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=415-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=370) and (y1=405) and (roll<=7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=370-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=325) and (y1=405) and (roll<=6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=325-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=280) and (y1=405) and (roll<=5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=280-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=235) and (y1=405) and (roll<=4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=235-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=190) and  (y1=405) and (roll<=3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=190-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=145) and (y1=405) and (roll<=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=145-(roll*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=100) and (roll>=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=75+((roll-10)*45);x2:=x1-10;y1:=30;y2:=40;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;




if (x1=55) and (y1=405) and (roll<=10)                 {rolls on ls}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=369) and (roll<=9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=333) and (roll<=8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=297) and (roll<=7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=261) and (roll<=6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=225) and (roll<=5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=189) and (roll<=4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and  (y1=153) and (roll<=3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (y1=117) and (roll<=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=55;x2:=x1+10;y1:=y1-(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=55) and (roll>=11) and (y1=81)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;


if (x1=55) and (y1=45) and (roll<=10)                 {rolls on top}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=100) and (y1=45) and (roll<=9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=145) and (y1=45) and (roll<=8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=190) and (y1=45) and (roll<=7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=235) and (y1=45) and (roll<=6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=280) and (y1=45) and (roll<=5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=325) and (y1=45) and (roll<=4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=370) and  (y1=45) and (roll<=3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=415) and (y1=45) and (roll<=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=x1+(roll*45);x2:=x1-10;y1:=45;y2:=55;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=460) and (roll>=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505-((roll-10)*45);x2:=x1-10;y1:=405;y2:=415;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;


if (x1=505) and (y1=45) and (roll<=10)                 {rolls on rs}
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=81) and (roll<=9)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=117) and (roll<=8)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=153) and (roll<=7)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=189) and (roll<=6)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=225) and (roll<=5)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=261) and (roll<=4)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and  (y1=297) and (roll<=3)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=y1+(roll*36);y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;
if (x1=505) and (y1=333) and (roll<=2)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=505;x2:=x1+10;y1:=405;y2:=y1+10;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;

if (x1=100) and (roll>=11)
then begin setcolor(11);
           rectangle(x1,y1,x2,y2);
           setcolor(16);
           x1:=75+((roll-10)*45);x2:=x1+10;y1:=30;y2:=40;
           rectangle(x1,y1,x2,y2);
           goto 10;
           end;






10:spaces;
rollcount:=rollcount+1;

until (money<=0) or (money>=5000)or (rollcount=60);

if (money<=0)  or (rollcount=60)
then begin
     closegraph;
     readln;
     writeln('Oh well they let you off easy and only');
     writeln('broke your thumbs.They still want that money ');
     writeln('so why don''t you try again');
     goto 20;
     end

else begin
     closegraph;
     writeln('You did it. You made the money,paid the bookies');
     writeln('and get to go on with your life.It only took you');
     writeln(rollcount,' days');
     readln;
     end;

closegraph;
end.












