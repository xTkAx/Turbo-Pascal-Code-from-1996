program CountColonies (Input, Output, SlideFile);
{ Program 11.3 }
{ Finds the colonies in a digitized microscope slide read in 
  from a text file. A list of colonies found and data about 
  them is printed.                                            }

const
  MaxRows = 20;   { Maximum size of slide. }
  MaxCols = 20;

type
  SlideType = record
                NumRows,
                NumCols :Integer;
                Cell    :array [1..MaxRows, 1..MaxCols] of Boolean
              end;  { SlideType }

var
  S :SlideType;

{----------------------------------------------------------}

procedure LoadSlide (var S :SlideType);
{ Pre: SlideFile exists and is correctly formatted, i.e.,
         first line holds number of rows
         second line holds number of columns
         remainder of lines hold characters representing cells in slide
  Post: S has been given values corresponding to the information
        in SlideFile
        Positions in SlideFile containing '1' are represented as TRUE,
        others as FALSE                                                }

var
  SlideFile :Text;
  Row,
  Col       :Integer;
  CellChar  :Char;

begin
  Assign (SlideFile, 'Slide.TXT');
  Reset (SlideFile);
  ReadLn (SlideFile, S.NumRows);
  ReadLn (SlideFile, S.NumCols);
  for Row := 1 to S.NumRows do
    begin
      for Col := 1 to S.NumCols do
        begin
          Read (SlideFile, CellChar);
          S.Cell[Row, Col] := (CellChar = '1')
        end;  { for Col }
      ReadLn (SlideFile)   { Skip EoLn marker. }
    end;  { for Row }
  Close (SlideFile)
end;  { LoadSlide }

{----------------------------------------------------------}

procedure PrintColonies (var S :SlideType);
{ Pre: S is a valid slide
  Post: A table showing the locations and sizes of all of 
        the colonies on slide S is displayed             }

var
  Row,
  Col,
  Size :Integer;

   {- - - - - - - - - - - - - - - - - - - - - - - - - - - -}

   procedure FindColonySize (var S :SlideType; Row, Col :Integer;
                             var Size :Integer);
   { Pre: S is a valid slide
     Post: Size holds the number of all TRUE cells connected 
           to Row,Col either horizontally or vertically. The 
           counted cells have been set to FALSE             }

   var
     SpokeSize :Integer;

   begin
     if (Row < 1) or (Row > S.NumRows) or
        (Col < 1) or (Col > S.NumCols)
       then Size := 0
       else if S.Cell[Row, Col] = FALSE
              then Size := 0
              else
                begin
                  S.Cell[Row, Col] := FALSE;    { To avoid circling. }
                  Size := 1;
                  FindColonySize (S, Row+1, Col, SpokeSize);
                  Size := Size + SpokeSize;
                  FindColonySize (S, Row-1, Col, SpokeSize);
                  Size := Size + SpokeSize;
                  FindColonySize (S, Row, Col+1, SpokeSize);
                  Size := Size + SpokeSize;
                  FindColonySize (S, Row, Col-1, SpokeSize);
                  Size := Size + SpokeSize
                end
   end;  { FindColonySize }

   {- - - - - - - - - - - - - - - - - - - - - - - - - - - -}

begin
  WriteLn ('Row':5, 'Col':5, 'Size':5);
  for Row := 1 to S.NumRows do
    for Col := 1 to S.NumCols do
      if S.Cell[Row, Col] = TRUE
        then
          begin
            FindColonySize (S, Row, Col, Size);
            WriteLn (Row:5, Col:5, Size:5)
          end
end;  { PrintColonies }

{==========================================================}

begin
  LoadSlide (S);
  PrintColonies (S);

  ReadLn;
end.
