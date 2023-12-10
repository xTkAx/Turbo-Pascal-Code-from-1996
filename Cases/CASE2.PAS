program VoteCount (Input, Output);
{ Reads the number of votes for Presley and Corica and prints
  a table giving the percentage for each and the total.      }

const
  Col = 15;    { Width of each column in the table. }

var
  CoriVotes,
  PresVotes,
  Total     :Integer;
  CoriPct,
  PresPct,
  TotalPct  :Real;

begin
  WriteLn ('-Vote Analysis Program-');
  Write ('Enter the number of votes for Corica: ');
  ReadLn (CoriVotes);
  Write ('Enter the number of votes for Presley: ');
  ReadLn (PresVotes);

  Total := CoriVotes + PresVotes;
  CoriPct := (CoriVotes / Total) * 100;
  PresPct := (PresVotes / Total) * 100;
  TotalPct := CoriPct + PresPct;

  WriteLn;
  WriteLn ('Name':Col, 'Votes':Col, 'Percent':Col);
  WriteLn ('Corica':Col, CoriVotes:Col, CoriPct:Col:2);
  WriteLn ('Presley':Col, PresVotes:Col, PresPct:Col:2);
  WriteLn;
  WriteLn ('Total':Col, Total:Col, TotalPct:Col:2)
end.