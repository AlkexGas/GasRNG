program RNDProjectGroup;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  uGenerator in 'uGenerator.pas',
  uConfig in 'uConfig.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
