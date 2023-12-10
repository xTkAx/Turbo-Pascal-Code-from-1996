program LotterySimulation (Input, Output);
{ Plays repeated sets of lottery games with the user. }

const
  MaxItems = 1000;     { Needed by List Package. }
  MaxNumber = 44;      { Numbers chosen between 1 and 44. }
  SequenceLength = 6;  { Number of numbers in sequence. }

type
  ItemType = Integer;
  ListType = record
               Item      :array [1..MaxItems] of ItemType;
               NumItems  :0..MaxItems
             end;  { ListType }

var
  Earnings :Real;
  Response :Char;

{----------------------------------------------------------}
{*****   ListType package procedures and functions    *****}
{----------------------------------------------------------}

procedure ListInit (var L :ListType);
{ Pre: none
  Post: L is returned as an empty list }

begin
  L.NumItems := 0
end;  { ListInit }

{----------------------------------------------------------}

procedure AddToList (X :ItemType; var L :ListType);
{ Pre: L is a valid list with room for an additional element
  Post: X has been added to the end of L                    }

begin
  L.NumItems := L.NumItems + 1;
  L.Item[L.NumItems] := X
end;  { AddToList }

{----------------------------------------------------------}

procedure ListWrite (var L :ListType);
{ Pre: L is a valid non-empty list
  Post: L has been printed to the screen on a single 
        line with commas                             }

var
  Index :Integer;

begin
  for Index := 1 to L.NumItems - 1 do
    Write (L.Item[Index], ', ');
  Write (L.Item[L.NumItems])
end;  { ListWrite }

{----------------------------------------------------------}

function ListSize (var L :ListType) :Integer;
{ Pre: L is a valid list
  Post: Returns number of items in list L }

begin
   ListSize := L.NumItems
end;  { ListSize }

{----------------------------------------------------------}

function ListFull (var L :ListType) :Boolean;
{ Pre: L is a valid list
  Post: Returns TRUE if and only if L is full }

begin
  ListFull := (L.NumItems = MaxItems)
end;  { ListFull }

{----------------------------------------------------------}

function InList (Goal :ItemType; var L :ListType) :Boolean;
{ Pre: L is a valid list
  Post: Returns TRUE if and only if Goal is in list L }

var
  Index :Integer;

begin
  if L.NumItems = 0
    then InList := FALSE
    else
      begin
        Index := 1;
        with L do
          while (Item[Index] <> Goal) and (Index < NumItems) do
            Index := Index + 1;
        if L.Item[Index] = Goal
          then InList := TRUE
          else InList := FALSE
      end
end;  { InList }

{----------------------------------------------------------}
{*****       End of ListType list package             *****}
{----------------------------------------------------------}

procedure GetLottery (var Lottery :ListType);
{ Pre: none
  Post: Lottery holds six random non-duplicate numbers 
        from 1 - MaxNumber                             }

var
  CurrNumber :Integer;

begin
  ListInit (Lottery);
  repeat
    CurrNumber := Random(MaxNumber) + 1;
    if not InList(CurrNumber, Lottery)
      then AddToList (CurrNumber, Lottery)
  until ListSize(Lottery) = SequenceLength
end;  { GetLottery }

{----------------------------------------------------------}

procedure GetTicket (var Ticket :ListType);
{ Pre: none
  Post: Ticket holds six non-duplicate numbers from 
        1 - MaxNumber entered by user               }

var
  CurrNumber :Integer;

begin
  ListInit (Ticket);
  repeat
    Write ('Enter number (1-', MaxNumber, '): ');
    ReadLn (CurrNumber);
    if CurrNumber in [1..MaxNumber]
      then if not InList(CurrNumber, Ticket)
             then AddToList (CurrNumber, Ticket)
             else WriteLn ('Number already selected')
      else WriteLn ('Number must be between 1 and ', MaxNumber)
  until ListSize(Ticket) = SequenceLength
end;  { GetTicket }

{----------------------------------------------------------}

procedure Compare (var L1, L2 :ListType;
                   var NumMatches :Integer);
{ Pre: L1, L2 are valid lists without duplicates
  Post: NumMatches holds the number of items in common 
        in the two lists                               }

var
  Index :Integer;

begin
  NumMatches := 0;
  for Index := 1 to ListSize(L1) do
    if InList(L1.Item[Index], L2)
      then NumMatches := NumMatches + 1
end;  { Compare }

{----------------------------------------------------------}

function Payoff (NumMatches :Integer) :Real;
{ Pre: NumMatches in [0..6]
  Post: Returns the correct payoff for that number of matches }

begin
  case NumMatches of
    0, 1, 2 : Payoff := 0.00;
    3       : Payoff := 2.00;
    4       : Payoff := 200.00;
    5       : Payoff := 1000.00;
    6       : Payoff := 1000000.00
   end  { case }
end;  { Payoff }

{----------------------------------------------------------}

procedure BuyTicket (var Earnings :Real);
{ Pre: Earnings holds current value, user wants to buy a ticket
  Post: Ticket is sold, payoff calculated, and Earnings updated }

const
  Price = 1.00;        { $1 ticket price. }

var
  Lottery,
  Ticket     :ListType;
  NumMatches :Integer;

begin
  GetLottery (Lottery);
  GetTicket (Ticket);
  Compare (Ticket, Lottery, NumMatches);
  WriteLn;
  Write ('Your ticket: ');
  ListWrite (Ticket);
  WriteLn;
  Write ('Lottery number: ');
  ListWrite (Lottery);
  WriteLn;
  Earnings := Earnings + Payoff(NumMatches) - Price     { Price of ticket. }
end;  { BuyTicket }

{====================================================}

begin
  Randomize;        { Non-Standard! }

  WriteLn ('Lottery Simulation');
  Earnings := 0.00;
  repeat
    BuyTicket (Earnings);
    WriteLn ('Current earnings: $', Earnings:1:2);
    Write ('Buy another ticket? ');
    ReadLn (Response)
  until not (Response in ['y', 'Y'])
end.
