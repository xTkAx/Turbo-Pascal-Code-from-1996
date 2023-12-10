PROGRAM Einstein (output);
{This program  finds out how many hairs it takes to power a town per day,
 using the formula E=MC2}

USES
CRT;
CONST
C=3e10;
E=2e20;

Begin
TextColor (0);
ClrScr;
Write('The total amount of hairs needed is');
Write(((c*c) div 10)) div (e));
WriteLn;
WriteLn('Press any key to continue');
ReadLn;
end.
