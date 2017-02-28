unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    RNDGroupBox: TGroupBox;
    OutputEdit: TEdit;
    GenerateButton: TButton;
    RangeEdit: TEdit;
    ResultLabel: TLabel;
    RangeLabel: TLabel;
    CopyButton: TButton;
    procedure GenerateButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DEFAULT_GENERATION_RANGE = 100;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.CopyButtonClick(Sender: TObject);
Var
  str : String;
  Value : Integer;
begin
  str := OutputEdit.Text;
  if Str <> '' then
    Value := StrToInt(str);

end;

procedure TMainForm.GenerateButtonClick(Sender: TObject);
Var
  Value : Extended;
  Range : Integer;

  Function IsCorrectStringValue(const str : String): Boolean;
  Begin
    Result:= False;
  End;

  Function MakeInt(const AValue : Extended) : Integer;
  Begin
    Result := Trunc(Value);
  End;

begin
  Value := 0;
  Range := StrToInt(RangeEdit.Text);
  if Range = 0 then
  Begin
    RangeEdit.Text := IntToStr(DEFAULT_GENERATION_RANGE);
    Range := DEFAULT_GENERATION_RANGE;
  End;
  Randomize;
  Value := Random(Range) + 1;
  OutputEdit.Text:= IntToStr(MakeInt(Value));
end;

end.
