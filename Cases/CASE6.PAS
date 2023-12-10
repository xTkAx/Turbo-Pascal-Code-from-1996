program GradeList (Input, Output);
{ Reads in a list of grades and names, and then prints a 
  list of those students with honors grades, and a list of 
  those with failing grades.                              }

const
  MaxStus = 100;    { Maximum number of students. }
  MaxStrLen = 10;   { Maximum name length. }
  Honors = 90;      { Minimum honors grade. }
  Passing = 60;     { Minimum passing grade. }

type
  StringType = packed array [1..MaxStrLen] of Char;
  NameListType = array [1..MaxStus] of StringType;
  GradeListType = array [1..MaxStus] of Integer;

var
  Name    :NameListType;
  Grade   :GradeListType;
  NumStus :Integer;        { Actual number of students entered. }

{----------------------------------------------------------}

function StrLength (var Str :StringType) :Integer;
{ Pre: none
  Post: Returns the actual length of the string stored in Str
        The string is assumed to be padded with blanks       }

var
  Pos :Integer;   { Element in Str to check. }

begin
  Pos := MaxStrLen;
  while (Pos > 1) and (Str[Pos] = ' ') do
    Pos := Pos - 1;

  if Str[Pos] = ' '
    then StrLength := 0
    else StrLength := Pos
end;  { StrLength }

{----------------------------------------------------------}

procedure StrWrite (S :StringType);
{ Pre: S correctly stores a string with trailing blanks
  Post: S has been written to screen with trailing blanks }

var
  Index :Integer;

begin
  for Index := 1 to StrLength(S) do
    Write (S[Index])
end;  { StrWrite }

{----------------------------------------------------------}

procedure StrReadLn (var S :StringType);
{ Pre: User is prepared to enter a string
  Post: Characters have been read from the keyboard, terminated
        with <Return>, and placed into S. The unused portion of
        S is filled with blanks                                }

var
  BlankPos, CurrLength :Integer;

begin
  CurrLength := 0;
  while (not EoLn) and (CurrLength < MaxStrLen) do
    begin
      CurrLength := CurrLength + 1;
      Read (S[CurrLength])
    end;
  ReadLn;        { Read the Return key. }

  for BlankPos := CurrLength + 1 to MaxStrLen do
    S[BlankPos] := ' '
end;  { StrReadLn }

{---------------------------------------------------------}

procedure LoadArrays (var Name :NameListType;
                      var Grade :GradeListType;
                      var NumStus :Integer);
{ Pre: none
  Post: Prompts user for names and grades of students; 
        values are returned in Name and Grade and NumStus
        is returned with the number of students entered  }

var
  Another :Char;          { User reply. }

begin
  NumStus := 0;
  repeat
    NumStus := NumStus + 1;
    Write ('Enter a name: ');
    StrReadLn (Name[NumStus]);
    Write ('Enter student''s grade: ');
    ReadLn (Grade[NumStus]);
    Write ('Another student (Y/N)? ');
    ReadLn (Another)
  until (Another = 'N') or (Another = 'n')
end;  { LoadArrays }

{----------------------------------------------------------}

procedure PrintHonors (var Name :NameListType;
                       var Grade :GradeListType;
                       NumStus :Integer);
{ Pre: NumStus holds correct number of students in arrays
  Post: A list of names and grades of students with honors 
        grades has been printed                           }

var
  Index :Integer;   { Counter for students in arrays. }

begin
  WriteLn;
  WriteLn ('Honors grades:');
  for Index := 1 to NumStus do
    if Grade[Index] >= Honors
      then
        begin
          Write ('  ');
          StrWrite (Name[Index]);
          WriteLn (' ', Grade[Index])
        end
end;  { PrintHonors }

{----------------------------------------------------------}

procedure PrintFails (var Name :NameListType;
                      var Grade :GradeListType;
                      NumStus :Integer);
{ Pre: NumStus holds correct number of students in arrays
  Post: A list of names and grades of students with failing 
        grades has been printed                            }

var
  Index :Integer;

begin
  WriteLn;
  WriteLn ('Failing grades:');
  for Index := 1 to NumStus do
    if Grade[Index] < Passing
      then
        begin
          Write ('  ');
          StrWrite (Name[Index]);
          WriteLn (' ', Grade[Index])
        end
end;  { PrintFails }

{==========================================================}

begin
  LoadArrays (Name, Grade, NumStus);
  PrintHonors (Name, Grade, NumStus);
  PrintFails (Name, Grade, NumStus)
end.
