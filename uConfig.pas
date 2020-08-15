unit uConfig;

interface

uses
  System.IniFiles;

type
  TConfig = class(TObject)
    constructor Create(const Name: string);
    destructor Destroy(); override;
  public const
    // затравка для генератора по умолчанию
    DEFAULT_GENERATION_RANGE = 100;
    ConfigSection = 'Config';
    LastRangeKey = 'LastRangeKey';
  strict private
    fIni: TIniFile;
    function GetLastRange: Integer;
    procedure SetLastRange(const Value: Integer);
  public
    property LastRange: Integer read GetLastRange write SetLastRange;
  end;

implementation

uses
  System.SysUtils;

{$REGION 'TConfig'}

constructor TConfig.Create(const Name: string);
begin
  fIni := TIniFile.Create(Name);
end;

destructor TConfig.Destroy;
begin
  FreeAndNil(fIni);
end;

function TConfig.GetLastRange: Integer;
begin
  Result := fIni.ReadInteger(ConfigSection,
      LastRangeKey, DEFAULT_GENERATION_RANGE);
end;

procedure TConfig.SetLastRange(const Value: Integer);
begin
  fIni.WriteInteger(ConfigSection, LastRangeKey, Value);
end;

{$ENDREGION 'TConfig'}

end.
