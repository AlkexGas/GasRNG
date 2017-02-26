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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.GenerateButtonClick(Sender: TObject);
Var
  Value : Extended;
begin
  Randomize;
  Self.OutputEdit.Text:= IntToStr(Trunc(Random(StrToInt(RangeEdit.Text))+1));
end;

end.
