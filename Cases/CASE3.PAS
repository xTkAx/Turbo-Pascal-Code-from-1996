program Guessing (Input, Output);
{ Plays a guessing game where the computer "thinks" of a number
  and the user tries to guess it. The computer tells the user if
  the guess is too high, too low or correct and keeps track of the
  number of guesses taken.
 Note: Uses non-Standard random number commands.  }

uses
  crt;

const
  MaxNum = 100;     { Number to fall between 1 & MaxNum. }

var
  SecretNum,     { Number the computer is "thinking" of. }
  Guess,
  NumGuesses :Integer;

begin
  clrscr;
  Randomize;                           { Non-Standard. }
  SecretNum := Random(MaxNum) + 1;     { SecretNum between 1 and MaxNum. }
  NumGuesses := 0;
  WriteLn ('The computer has the secret number...');
  repeat
    Write ('Enter your guess (1-', MaxNum, '): ');
    ReadLn (Guess);
    while (Guess < 1) or (Guess > MaxNum) do
      begin
        Write ('  Bad guess. Please re-enter: ');
        ReadLn (Guess)
      end;
    NumGuesses := NumGuesses + 1;
    if Guess = SecretNum
      then WriteLn ('Correct!')
      else if Guess < SecretNum
             then WriteLn ('Too low... Try again.')
             else WriteLn ('Too high... Try again.')
  until Guess = SecretNum;
  WriteLn ('You used ', NumGuesses, ' guesses.');
  writeln;
  readln;
end.