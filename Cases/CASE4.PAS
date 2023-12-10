program TwentyOne (Input, Output);
{ Plays a modified game of 21 against a human opponent. }

var
  HumanWins,             { Counters for    }
  CompWins,              { each occurrence. }
  Draws      :Integer;
  Again      :Char;

{-------------------------------------------------------}

procedure DealHand (NumCards :Integer; var Sum :Integer);
{ Pre: NumCards >= 0
  Post: NumCards cards have been randomly chosen and displayed,
        and Sum is returned with the sum of the cards.         }

var
  Card,         { Card chosen at random. }
  CardCount :Integer;

begin
  Sum := 0;
  for CardCount := 1 to NumCards do
    begin
      Card := Random(10) + 1;
      Sum := Sum + Card;
      Write (Card:3)
    end;  { for }
  WriteLn
end;  { DealHand }

{-------------------------------------------------------}

procedure FindWinner (CompSum, HumanSum :Integer;
                      var HumanWins, CompWins, Draws :Integer);
{ Pre: CompSum and HumanSum hold valid values.
  Post: One of HumanWins, CompWins, and Draws is incremented
        and the results displayed based upon the values of
        the sums according to the game's rules.              }

const
  Limit = 21;   { Highest winning hand. }

begin
  Write ('I have ', CompSum, ' and you have ', HumanSum);
  if ((CompSum > Limit) and (HumanSum > Limit))
     or (CompSum = HumanSum)
    then
      begin
        WriteLn (' so we draw.');
        Draws := Draws + 1
      end
    else if (CompSum > Limit) or
            (HumanSum > CompSum) and (HumanSum <= Limit)
           then
             begin
               WriteLn (' so you win.');
               HumanWins := HumanWins + 1
             end
           else
             begin
               WriteLn (' so I win.');
               CompWins := CompWins + 1
             end
end;  { FindWinner }

{-------------------------------------------------------}

procedure PlayGame (var HumanWins, CompWins, Draws :Integer);
{ Pre: HumanWins, CompWins, and Draws hold current values.
  Post: A game is played, and one of the parameters is
        incremented corresponding to the winner.          }

const
  NumCompCards = 3;  { Computer always chooses 3 cards. }

var
  NumHumanCards,           { Number chosen by human. }
  HumanSum,
  CompSum       :Integer;  { Sums of contents of hands. }

begin
  Write ('How many cards do you want? ');
  ReadLn (NumHumanCards);

  Write ('You:');
  DealHand (NumHumanCards, HumanSum);
  Write ('Me: ');
  DealHand (NumCompCards, CompSum);

  FindWinner (CompSum, HumanSum, HumanWins, CompWins, Draws)
end;  { PlayGame }

{-------------------------------------------------------}

procedure PrintSummary (HumanWins, CompWins, Draws :Integer);
{ Pre: none
  Post: Values of parameters are displayed with labels. }

begin
  WriteLn ('My winnings = ', CompWins);
  WriteLn ('Your winnings = ', HumanWins);
  WriteLn ('Draws = ', Draws)
end;  { PrintSummary }

{========================================================}

begin     { Main }
  Randomize;     { Non-Standard command. }
  HumanWins := 0;
  CompWins := 0;
  Draws := 0;

  repeat
    PlayGame (HumanWins, CompWins, Draws);
    WriteLn;
    Write ('Play again (Y/N)? ');
    ReadLn (Again)
  until (Again = 'N') or (Again = 'n');

  PrintSummary (HumanWins, CompWins, Draws)
end.