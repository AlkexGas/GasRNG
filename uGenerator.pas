unit uGenerator;

interface

function Generate(const Basement, Def: Integer): Integer;

implementation

function Generate(const Basement, Def: Integer): Integer;

  function AsInt(const AValue: Extended) : Integer;
  begin
    Result := Trunc(AValue);
  end;

begin
  if Basement = 0 then
    Result := Def
  else
  begin
    Randomize;
    Result := AsInt(Random(Basement) + 1);
  end
end;

end.
