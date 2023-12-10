program Survey (Input, Output, DataFile);
{ Case Study program, Chapter 9. }
{ Allows user to enter responses to a survey, and then generates statistics.
  The questions for the survey are stored in a text file which has as its
  first line the number of questions, and then has the questions to be
  answered, one per line.                                                   }

const
  DataFileName = 'SURVEY.DAT';
  QuestFiName = 'QUESTION.TXT';
  MaxQuest = 20;

type
  DataType = array [1..MaxQuest] of Char;
  DataFileType = file of DataType;

var
  DataFile :DataFileType;
  Command  :Char;

{----------------------------------------------------------}

procedure GetCommand (var Command :Char);
{ Pre: none
  Post: Returns command typed by user }

begin
  repeat
    WriteLn ('Enter command');
    Write (' [E]nter data  [P]rint stats  [I]nitialize  [Q]uit: ');
    ReadLn (Command)
  until Command in ['E', 'e', 'P', 'p', 'I', 'i', 'Q', 'q']
end;  { GetCommand }

{----------------------------------------------------------}

procedure DisplayLine (var TFile :Text);
{ Pre: TFile is open and has at least one more line
 Post: Line has been read and displayed on screen  }

var
  Ch :Char;

begin
  while not EoLn(TFile) do
    begin
      Read (TFile, Ch);
      Write (Ch)
    end;  { while }
  Write (' ');
  ReadLn (TFile)
end;  { DisplayLine }

{----------------------------------------------------------}

procedure GetDataFromUser (var Data :DataType);
{ Pre: Question.TXT exists on disk and holds questions to be answered
  Post: Data has been elicited from user and stored in Data          }

var
  QuestFile :Text;
  NumQuests,
  QNum      :Integer;
  Response  :Char;

begin
  for QNum := 1 to MaxQuest do
    Data[QNum] := ' ';

  Assign (QuestFile, QuestFiName);
  Reset (QuestFile);
  ReadLn (QuestFile, NumQuests);
  for QNum := 1 to NumQuests do
    begin
      DisplayLine (QuestFile);
      ReadLn (Response);
      Data[QNum] := Response
    end;  { for }
  Close (QuestFile)
end;  { GetDataFromUser }

{----------------------------------------------------------}

procedure AddDataToFile (NewData :DataType;
                         var DataFile :DataFileType);
{ Pre: DataFile exists on disk
  Post: Data has been added to DataFile }

const
  TempFileName = 'TEMP.DAT';

var
  TempFile :DataFileType;
  Data     :DataType;

begin
  Assign (TempFile, TempFileName);

  { Copy DataFile to TempFile }
  Reset (DataFile);
  ReWrite (TempFile);
  while not EOF(DataFile) do
    begin
      Read (DataFile, Data);
      Write (TempFile, Data)
    end;
  Close (TempFile);
  Close (DataFile);

  { Copy TempFile and NewData back to DataFile. }
  Reset (TempFile);
  ReWrite (DataFile);
  while not EOF(TempFile) do
    begin
      Read (TempFile, Data);
      Write (DataFile, Data)
    end;
  Write (DataFile, NewData);
  Close (DataFile);
  Close (TempFile)
end;  { AddDataToFile }

{----------------------------------------------------------}

procedure DoEnter (var DataFile :DataFileType);
{ Pre: User has given Enter command, DataFile exists
  Post: Data entered by user has been added to file }

var
  Data :DataType;

begin
  GetDataFromUser (Data);
  AddDataToFile (Data, DataFile)
end;  { DoEnter }

{----------------------------------------------------------}

procedure DoStats (var DataFile :DataFileType);
{ Pre: User has given the Stats command; DataFile exists
  Post: Statistics from DataFile have been displayed    }

var
  Data       :DataType;
  QuestFile  :Text;
  NumQuests,
  QNum       :Integer;
  Ch         :Char;
  Freq       :array ['A'..'Z'] of Integer;

begin
  Assign (QuestFile, QuestFiName);
  Reset (QuestFile);
  ReadLn (QuestFile, NumQuests);
  for QNum := 1 to NumQuests do
    begin
      DisplayLine (QuestFile);
      WriteLn;
      for Ch := 'A' to 'Z' do
        Freq[Ch] := 0;

      Reset (DataFile);
      while not EOF(DataFile) do
        begin
          Read (DataFile, Data);
          Freq[Data[QNum]] := Freq[Data[QNum]] + 1
        end;

      for Ch := 'A' to 'Z' do
        if Freq[Ch] <> 0
          then WriteLn (Ch:5, Freq[Ch]:5)
    end;
  Close (QuestFile);
  Close (DataFile)
end;  { DoStats }

{==========================================================}

begin
  Assign (DataFile, DataFileName);
  GetCommand (Command);
  while not (Command in ['Q', 'q']) do
    begin
      case Command of
        'I', 'i' : begin   { Create empty file. }
                     ReWrite (DataFile);
                     Close (DataFile);
                     WriteLn ('Initialized...')
                   end;  { [I]initialize }
        'P', 'p' : DoStats (DataFile);
        'E', 'e' : DoEnter (DataFile)
      end; { case }
      GetCommand (Command)
    end  { while }
end.
