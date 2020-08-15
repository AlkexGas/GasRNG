unit UMainForm;

interface

{$REGION 'USES'}
uses
  System.SysUtils,
  System.Variants,
  System.Classes,
  Winapi.Windows,
  Winapi.Messages,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  uConfig;
{$ENDREGION 'U
SES'}

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    fConfig: TConfig;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  Vcl.Clipbrd,
  uGenerator;



{$REGION 'TMainForm'}

procedure TMainForm.CopyButtonClick(Sender: TObject);
var
  str : String;
begin
  str := OutputEdit.Text;
  if Str <> '' then
  begin
    Clipboard.AsText := str;
    ShowMessage('Результат скопирован в буфер обмена!');
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  fConfig := TCOnfig.Create(ExtractFileDir(Application.ExeName) + Name + '.ini');
  RangeEdit.Text := fConfig.LastRange.ToString;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fConfig);
end;

procedure TMainForm.FormResize(Sender: TObject);
const
  MinClientWidth = 256;
  MinClientHeight = 120;
begin
  if ClientWidth < MinClientWidth then
    ClientWidth := MinClientWidth;
  if ClientHeight < MinClientHeight then
    ClientHeight := MinClientHeight;
end;

procedure TMainForm.GenerateButtonClick(Sender: TObject);
var
  Range: Integer;
begin
  Range := string(RangeEdit.Text).ToInteger;
  if Range = 0 then
  begin
    RangeEdit.Text := fConfig.LastRange.ToString;
    Range := fConfig.LastRange;
  end
  else
    fConfig.LastRange := Range;

  OutputEdit.Text := Generate(Range, 0).ToString()
end;

{$ENDREGION 'TMainForm'}

end.
