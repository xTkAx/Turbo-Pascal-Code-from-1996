program CaveGame (Input, Output);
{ Plays a treasure hunt game. }

uses
  crt;

const
  CaveSize = 10;        { Cave is 10 by 10. }

type
  RoomIndexType = 1..CaveSize;
  RoomType = (Empty, TrapDoor, Pit, Gold, Diamonds, Silver);
  CaveType = array [1..CaveSize, 1..CaveSize] of RoomType;
  RoomSetType = set of RoomType;

var
  Cave         :CaveType;
  AllTreasures,                { Used as a global constant. }
  AllHazards,                  { Used as a global constant. }
  Treasure     :RoomSetType;

{---------------------------------------------------------------}

procedure BuildCave (var Cave :CaveType);
{ Pre: none
  Post: The cave has been initialized with randomly placed
        treasures and hazards                             }

var
  Room     :RoomType;
  Row, Col :RoomIndexType;

begin
  Randomize;    { Choose different rooms each run. }
  { Start all rooms empty. }
  for Row := 1 to CaveSize do
    for Col := 1 to CaveSize do
      Cave[Row, Col] := Empty;

  { Place treasures and hazards randomly. }
  for Room := TrapDoor to Silver do
    begin
      repeat      { Find empty not at Cave[1,1]. }
        Row := Random(CaveSize) + 1;
        Col := Random(CaveSize) + 1
      until (Cave[Row,Col] = Empty) and not ((Row = 1) and (Col = 1));
      Cave[Row, Col] := Room
    end  { for }
end;  { BuildCave }

{----------------------------------------------------------}

function InCave (Row, Col :Integer) :Boolean;
{ Pre: none
  Post: Returns TRUE if and only if Row and Col are within cave limits }

begin
  InCave := (Row >= 1) and (Row <= CaveSize) and
            (Col >= 1) and (Col <= CaveSize)
end;  { InCave }

{----------------------------------------------------------}

procedure MakeMove (var Row, Col :RoomIndexType);
{ Pre: Row and Col are within cave limits
  Post: Player has been prompted to enter a valid move
        (North, East, West or South) and Row and Col
        have been changed to reflect the move         }

var
  Choice  :Char;
  NewRow,
  NewCol  :Integer;      { Temp test variables. }

begin
  repeat
    WriteLn ('Enter your move');
    Write ('N)orth  S)outh  E)ast  W)est: ');
    ReadLn (Choice);
    while not (Choice in ['N','n','S','s', 'E','e','W','w']) do
      begin
        WriteLn ('Bad choice - try again (N,S,E,W):');
        ReadLn (Choice)
      end;

    NewRow := Row;         { Set test variables. }
    NewCol := Col;
    case Choice of
      'N', 'n' : NewRow := Row - 1;
      'S', 's' : NewRow := Row + 1;
      'E', 'e' : NewCol := Col + 1;
      'W', 'w' : NewCol := Col - 1
    end;  { case }
    if not InCave(NewRow, NewCol)
      then WriteLn ('There is a cold, clammy cave wall there.')
  until InCave(NewRow, NewCol);

  Row := NewRow;
  Col := NewCol
end;  { MakeMove }

{----------------------------------------------------------}

procedure WriteRoom (Room :RoomType);
{ Pre: none
  Post: Contents of the room have been displayed }

begin
  Write ('You''re in a room ');
  case Room of
    Empty    : WriteLn ('that''s empty.');
    TrapDoor : WriteLn ('with a trapdoor...');
    Pit      : WriteLn ('with a pit...');
    Gold     : WriteLn ('that has Gold nuggets!');
    Diamonds : WriteLn ('that has Diamonds!');
    Silver   : WriteLn ('that has Silver bars!')
  end  { case }
end;  { WriteRoom }

{----------------------------------------------------------}

procedure ShowStatus (var Cave :CaveType; Treasure :RoomSetType);
{ Pre: none
  Post: The cave's contents, treasures found, and final 
        message have been displayed
  Note: AllTreasures is used as a global constant }

var
  Row,
  Col   :RoomIndexType;
  Found :RoomType;

begin
  if Treasure = AllTreasures
    then WriteLn ('You got all the treasure... You Win!')
    else WriteLn ('Oops! You lose...');
  WriteLn;
  WriteLn ('Here''s the cave ');
  for Row := 1 to CaveSize do
    begin
      for Col := 1 to CaveSize do
        case Cave[Row, Col] of
          Empty    : Write ('.');
          TrapDoor : Write ('T');
          Pit      : Write ('P');
          Gold     : Write ('G');
          Diamonds : Write ('D');
          Silver   : Write ('S')
        end;  { case }
      WriteLn
    end;
  WriteLn ('Treasures you found ');
  if Treasure = []
    then WriteLn ('  NONE!  So sorry...')
    else
      for Found := Gold to Silver do
        if Found in Treasure
          then case Found of
                 Gold     : WriteLn (' Gold');
                 Diamonds : WriteLn (' Diamonds');
                 Silver   : WriteLn (' Silver')
               end  { case }
end;  { ShowStatus }

{----------------------------------------------------------}

procedure PlayGame (var Cave :CaveType; var Treasure :RoomSetType);
{ Pre: Cave has been initialized
  Post: Game has been played with user, Treasure is returned
        with final accumulation of treasures
  Note: AllHazards, AllTreasures are used as global constants }

var
  RowLoc,
  ColLoc  :RoomIndexType;

begin
  RowLoc := 1;      { Start player at Cave[1,1]. }
  ColLoc := 1;
  Treasure := [];   { Start with no treasure. }
s

  WriteLn ('You are entering a dark cave with treasures...');
  WriteRoom (Cave[RowLoc, ColLoc]);
  repeat
    MakeMove (RowLoc, ColLoc);
    WriteRoom (Cave[RowLoc, ColLoc]);
    if Cave[RowLoc, ColLoc] in AllTreasures
      then                     { Found treasure. }
        begin
          WriteLn ('You''ve taken the treasure.');
          Treasure := Treasure + [Cave[RowLoc, ColLoc]];
          Cave[RowLoc, ColLoc] := Empty
        end;
    WriteLn
  until (Cave[RowLoc, ColLoc] in AllHazards) or
        (AllTreasures = Treasure)
end;  { PlayGame }

{=====================================================}

begin
  AllHazards := [TrapDoor, Pit];
  AllTreasures := [Gold, Diamonds, Silver];

  BuildCave (Cave);
  PlayGame (Cave, Treasure);
  ShowStatus (Cave, Treasure);
  Write ('press ENTER to continue..');
  readln;
  clrscr;
  end.
