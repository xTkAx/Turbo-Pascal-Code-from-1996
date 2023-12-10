program CurveArea (Input, Output);
{ This program calculates the area under the curve for function F(x).
  The user will enter the starting and ending points for the area to
  be measured, as well as the number of trapezoids to be used.       }

var
  StartPoint,
  EndPoint,
  TotalArea  :Real;
  NumTraps   :Integer;

{-----------------------------------------------------------------}

function F (X :Real) :Real;
{ Pre: F(x) is defined for X
  Post: Returns the value of F(X) = 1 / X  }

begin
  F := 1.0 / X
end;  { F }

{------------------------------------------------------------------}

function TrapArea (Height1, Height2, Base :Real) :Real;
{ Pre: none
  Post: Returns the area of a trapezoid with the given 
        heights and base                              }

begin
  TrapArea := 0.5 * (Height1 + Height2) * Base
end;  { TrapArea }

{------------------------------------------------------------------}

function AreaUnder (StartPoint, EndPoint :Real;
                    NumTraps :Integer) :Real;
{ Pre: StartPoint < EndPoint; NumTraps > 0
       F is defined for all X, StartPoint <= X <= EndPoint
  Post: Returns approximate area under F(x) between
        EndPoint and StartPoint;
        The area is calculated using NumTraps trapezoids  }

var
  Area,
  Base,                 { Base of each trapezoid. }
  Lower     :Real;      { Lower side (x value) of each. }
  TrapCount :Integer;

begin
  Area := 0.0;
  Base := (EndPoint - StartPoint) / NumTraps;
  Lower := StartPoint;
  for TrapCount := 1 to NumTraps do
    begin
      Area := Area + TrapArea(F(Lower), F(Lower+Base), Base);
      Lower := Lower + Base
    end;  { for }
  AreaUnder := Area
end;  { AreaUnder }

{==================================================================}

begin
  WriteLn ('CALCULATES THE AREA UNDER F(X) = 1 / X');
  WriteLn;
  Write ('Enter the lower limit: ');
  ReadLn (StartPoint);
  Write ('Enter the upper limit: ');
  ReadLn (EndPoint);
  Write ('Enter the number of trapezoids: ');
  ReadLn (NumTraps);

  TotalArea := AreaUnder(StartPoint, EndPoint, NumTraps);

  WriteLn ('AREA = ', TotalArea:1:6)
end.